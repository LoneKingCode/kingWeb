import sys
import os
import time
from openpyxl import Workbook
from openpyxl.reader.excel import load_workbook
from kingWeb.util.SqlHelper import *
from kingWeb.models import *
from django.db.models import Q
class SysHelper(object):
       @staticmethod
       def get_column_names(tableid,condition,orderby):
           sql = 'select * from Sys_TableColumn where TableId={0} and {1} order By {2}'
           column_data = SqlHelper.query(sql.format(tableid,condition,orderby))
           column_names = ''
           for row in column_data:
               column_names+= row['Name'] + ','
           column_names = column_names.rstrip(',')
           return column_names

       @staticmethod
       def get_out_value(tableid,colname,colvalue):
           if colvalue == '0' or colvalue == 0:
               return '无'
           sql = "select OutSql from Sys_TableColumn where TableId={0} and Name='{1}'"
           outdata = SqlHelper.single(sql.format(tableid,colname))
           outdata_arr = outdata.split('|') #Example: Id,Name|Sys_Department|ParentId=0
           colnames = outdata_arr[0].split(',') # value,text
           tablename = outdata_arr[1]
           condition = outdata_arr[2]
           primarkey = colnames[0] #作为下拉菜单value的列
           textkey = colnames[1] #作为下拉菜单的text的列
           value = SqlHelper.single('select {0} from {1} where {2}={3}'.format(textkey,tablename,primarkey,colvalue))
           if value == '':
               return '无'
           return value

       def get_out_value_id(tableid,colname,colvalue):
           if colvalue == '' or colvalue == 0:
               return '无'
           sql = "select OutSql from Sys_TableColumn where TableId={0} and Name='{1}'"
           outdata = SqlHelper.single(sql.format(tableid,colname))
           outdata_arr = outdata.split('|') #Example: Id,Name|Sys_Department|ParentId=0
           colnames = outdata_arr[0].split(',') # value,text
           tablename = outdata_arr[1]
           condition = outdata_arr[2]
           primarkey = colnames[0] #作为下拉菜单value的列
           textkey = colnames[1] #作为下拉菜单的text的列
           value = SqlHelper.single("select {0} from {1} where {2}='{3}'".format(primarkey,tablename,textkey,colvalue))
           if value == '':
               return '无'
           return value

       @staticmethod
       def import_excel(tableid, file):
            result = ResultModel()
            table = SysTableList.objects.get(id=tableid)
            if table == None:
                result.msg = '未找到指定表'
                return result
            if table.allowimport != 1:
                result.msg = '不允许导入'
                return result
            columns = SysTableColumn.objects.filter(Q(tableid=tableid) & Q(importvisible = 1))
            if(len(columns) < 1):
                result.msg = '无可导入的列'
                return result
            columnsdict = {}
            coldatatype = {}
            for col in columns:
                columnsdict[col.description] = col.name
                coldatatype[col.name] = col.datatype

            rootpath = sys.path[0] + "\\kingWeb"
            dirname = time.strftime('%Y%m%d')
            datepath = 'upload\\temp\\' + dirname
            upload_dir = rootpath + '\\' + datepath
            if not os.path.exists(upload_dir):
                os.makedirs(upload_dir)
            filename = table.description + '_' + time.strftime('%Y%m%d%H%M%S') + '.xlsx'
            fileurl = '/upload/temp/' + dirname + '/' + filename
            filepath = upload_dir + '\\' + filename

            #保存上传的文件
            f = open(filepath, 'wb')
            for chunk in file.chunks():
                f.write(chunk)
            f.close()

            #加载excel文件
            wb = load_workbook(filepath)
            sheets = wb.get_sheet_names()
            sheet_first = sheets[0]
            ws = wb.get_sheet_by_name(sheet_first)
            table_rows = ws.rows
            table_columns = ws.columns
            values = []
            rowcount = 0
            table_head = []
            colcount = 0
            err = False
            for row in table_rows:
                if err:
                    break
                #第一行表头
                if rowcount == 0:
                    for col in row:
                        table_head.append(col.value)
                else:
                    value = {}
                    colcount = 0
                    for col in row:
                        cn_colname = table_head[colcount]
                        if not cn_colname in columnsdict.keys():
                            result.msg +=' 不存在 "' + cn_colname + '" 列 </br>'
                            err = True
                            break
                        if col.value == '':
                            result.msg +=  cn_colname + '" 列值不允许为空 </br>'
                            err = True
                            break

                        english_colname = columnsdict[cn_colname]

                        if coldatatype[english_colname] == 'out':
                            outvalue = SysHelper.get_out_value_id(tableid,english_colname,col.value)
                            if outvalue == '':
                                err = True
                                result.msg+=' ' + cn_colname + ' 值获取失败 '
                            else:
                                value[english_colname] = outvalue
                        else:
                            value[english_colname] = col.value
                        colcount = colcount + 1
                    values.append(value)

                rowcount = rowcount + 1
            #如果有错误信息 直接返回结果不继续执行
            if result.msg != '':
                 return result

            sqllist = []
            if  table.importtype == TableImportType.插入.value:
                sql = 'insert into {0}({1}) values({2})'
                for row in values:
                    addmodel = {}
                    for key,value in row.items():
                       addmodel[key] = str(value)

                    addmodel['CreateDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
                    addmodel['ModifyDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
                    addmodel['Creator'] = '0'
                    addmodel['Modifier'] = '0'
                    sqllist.append(sql.format(table.name,','.join(addmodel.keys()),\
        "'" + ','.join(addmodel.values()).replace(',' , "','") + "'"))
                SqlHelper.bulk_execute(sqllist)
                result.flag = True
            elif table.importtype == TableImportType.更新.value:
                sql = 'update {0} set {1} where {2}'
                primarkey = SqlHelper.single('select Name from Sys_TableColumn where PrimarKey=1 and TableId=' + tableid)
                if primarkey == '':
                    result.msg = '请设置主键，因为导入类型为更新'
                    return result
                #更新条件
                condition = ''
                for row in values:
                    newvalues = ''
                    for key,value in row.items():
                       if key == primarkey:
                           condition = key + "= '" + str(value) + "'"
                       newvalues += key + "='" + str(value) + "',"
                    newvalues +="ModifyDateTime='" + time.strftime("%Y-%m-%d %H:%M:%S") + "',"
                    newvalues +="Modifier='" + str(0) + "'"
                    sqllist.append(sql.format(table.name,newvalues,condition))
                SqlHelper.bulk_execute(sqllist)
                result.flag = True
                SqlHelper.bulk_execute(sqllist)
            else:
                result.msg = '请设置表管理中导入类型'
            return result

       def export_excel(tableid):
            result = ResultModel()
            table = SysTableList.objects.get(id=tableid)
            if table == None:
                result.msg = '未找到指定表'
                return result
            if table.allowexport != 1:
                result.msg = '不允许导出'
                return result
            rootpath = sys.path[0] + "\\kingWeb"
            dirname = time.strftime('%Y%m%d')
            datepath = 'upload\\temp\\' + dirname
            upload_dir = rootpath + '\\' + datepath
            if not os.path.exists(upload_dir):
                os.makedirs(upload_dir)
            filename = table.description + '_' + time.strftime('%Y%m%d%H%M%S') + '.xlsx'
            fileurl = '/upload/temp/' + dirname + '/' + filename
            filepath = upload_dir + '\\' + filename

            wb = Workbook()
            ws = wb.active
            ws.title = table.description
            columns = SysTableColumn.objects.filter(Q(tableid=tableid) & Q(exportvisible = 1))
            columnstr = ''
            table_head = []   #表头
            coldatatype = {}
            for col in columns:
                table_head.append(col.description)
                columnstr+=col.name + ','
                coldatatype[col.name] = col.datatype
            columnstr = columnstr.rstrip(',')
            ws.append(table_head)
            tabledata = SqlHelper.query('select {0} from {1}'.format(columnstr,table.name))
            for row in tabledata:
                rowdata = []
                for key,value in row.items():
                    if coldatatype[key] == 'out':
                        rowdata.append(SysHelper.get_out_value(tableid,key,value))
                    else:
                        rowdata.append(str(value))
                ws.append(rowdata)

            wb.save(filename=filepath)
            result.data = fileurl
            result.flag = True
            return result

       def download_import_template(tableid):
            result = ResultModel()
            table = SysTableList.objects.get(id=tableid)
            if table == None:
                result.msg = '未找到指定表'
                return result
            if table.allowimport != 1:
                result.msg = '不允许导入'
                return result
            rootpath = sys.path[0] + "\\kingWeb"
            dirname = time.strftime('%Y%m%d')
            datepath = 'upload\\temp\\' + dirname
            upload_dir = rootpath + '\\' + datepath
            if not os.path.exists(upload_dir):
                os.makedirs(upload_dir)
            filename = table.description + '_导入模板_' + time.strftime('%Y%m%d%H%M%S') + '.xlsx'
            fileurl = '/upload/temp/' + dirname + '/' + filename
            filepath = upload_dir + '\\' + filename

            wb = Workbook()
            ws = wb.active
            ws.title = table.description
            columns = SysTableColumn.objects.filter(Q(tableid=tableid) & Q(importvisible = 1))
            columnstr = ''
            table_head = []   #表头
            for col in columns:
                table_head.append(col.description)
            ws.append(table_head)

            wb.save(filename=filepath)
            result.data = fileurl
            result.flag = True
            return result