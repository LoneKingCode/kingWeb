import sys
import os
import time
from openpyxl.workbook import *
from kingWeb.util.sqlhelper import *
from kingWeb.models import *
from django.db.models import Q
class syshelper(object):

       @staticmethod
       def get_column_names(tableid,condition,orderby):
           sql = 'select * from Sys_TableColumn where TableId={0} and {1} order By {2}'
           column_data = sqlhelper.query(sql.format(tableid,condition,orderby))
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
           outdata = sqlhelper.single(sql.format(tableid,colname))
           outdata_arr = outdata.split('|') #Example: Id,Name|Sys_Department|ParentId=0
           colnames = outdata_arr[0].split(',') # value,text
           tablename = outdata_arr[1]
           condition = outdata_arr[2]
           primarkey = colnames[0] #作为下拉菜单value的列
           textkey = colnames[1] #作为下拉菜单的text的列
           value = sqlhelper.single('select {0} from {1} where {2}={3}'.format(textkey,tablename,primarkey,colvalue))
           if value == '':
               return '无'
           return value

       @staticmethod
       def import_excel(tableid, file):
           result = ResultModel()

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
            tabledata = sqlhelper.query('select {0} from {1}'.format(columnstr,table.name))
            for row in tabledata:
                rowdata = []
                for key,value in row.items():
                    if coldatatype[key] == 'out':
                        rowdata.append(syshelper.get_out_value(tableid,key,value))
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