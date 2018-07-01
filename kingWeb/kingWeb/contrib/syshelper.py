from kingWeb.contrib.sqlhelper import *
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
           if colvalue=='0' or colvalue==0:
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