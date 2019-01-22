from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import os
import sys
import json
import time
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.util.SqlHelper import SqlHelper
from kingWeb.util.SysHelper import SysHelper
from kingWeb.apps.adm.permission import check_permission
from kingWeb.settings import ROOT_PATH
@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = kwargs.get('id','')
    table_desc = ''
    columns = None
    table = None
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowview != 1:
            return render(request,'/adm/home/error.html')
        table_desc = table.description
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(listvisible=1)).order_by('listorder'))
        table_top_extendfunction = ''
        if table.topextendfunction and table.topextendfunction != 'None':
            table_top_extendfunction = table.topextendfunction.replace('{UserId}',str(request.user.id))
        #example: width,height|width,height
        view_edit_width_height = '90%,90%|90%,90%'.split('|') if not table.vieweditwidthheight or len(table.vieweditwidthheight.split('|')) < 2 \
        else table.vieweditwidthheight.split('|')
        view_width = view_edit_width_height[0].split(',')[0]
        view_height = view_edit_width_height[0].split(',')[1]
        addedit_width = view_edit_width_height[1].split(',')[0]
        addedit_height = view_edit_width_height[1].split(',')[1]
        view_width = view_width if 'px' in view_width or '%' in view_height else '90%'
        view_height = view_height if 'px' in view_height or '%' in view_height else '90%'
        addedit_width = addedit_width if 'px' in addedit_width or '%' in addedit_width else '90%'
        addedit_height = addedit_height if 'px' in addedit_height or '%' in addedit_height else '90%'
    return render(request,
        'adm/viewlist/index.html',
        {
            'title':table_desc + '管理',
            'tablecolumns':tablecolumns,
            'tableid':tableid,
            'table':table,
            'table_top_extendfunction':table_top_extendfunction,
            'view_width':view_width,
            'view_height':view_height,
            'addedit_width':addedit_width,
            'addedit_height':addedit_height,
        })

@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = kwargs.get('id','')
    columns = None
    table = None
    col_data = {}
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowadd != 1:
            return render(request,'/adm/home/error.html')
        table_desc = table.description
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(addvisible=1)).order_by('listorder'))
    for col in tablecolumns:
        if col.datatype == 'out':
            col_data[col.name] = SysHelper.get_out_list(col.outsql)
        elif col.datatype == 'enum':
            enumdata = col.enumrange.split(',')
            enumlist = []
            for e in enumdata:
               enumlist.append({'text':e,'value':e})
            col_data[col.name] = enumlist
        elif col.datatype == 'radio' or col.datatype == 'checkbox':
            option_data = col.selectrange.split(',')
            options = []
            for text in option_data:
                options.append({'value':text,'text':text})
            col_data[col.name] = options

    colperrow = 1 if table.columnperrow < 1 else table.columnperrow
    return render(request,
        'adm/viewlist/add.html',
        {
            'title':'添加' + table.description,
            'tablecolumns':tablecolumns,
            'tableid':tableid,
            'table':table,
            'col_data':col_data,
            'colperrow':colperrow,
        })

@check_permission
def detail(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    tableid = kwargs.get('value','')
    if not tableid or not id:
        return render(request, 'adm/viewlist/index')
    tablecolumns = None
    table = None
    out_col_data = {}
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowview != 1:
              return JsonResponse(result.tojson())
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(viewvisible=1)).order_by('listorder'))
    columnnames = SysHelper.get_column_names(tableid, "viewvisible=1", "ListOrder",False)
    data = SqlHelper.query('select {0} from {1} where {2}'\
        .format(columnnames,table.name,'Id=' + str(id)))[0]
    for col in tablecolumns:
        if col.datatype == 'out':
            col_data[col.name] = SysHelper.get_out_value(tableid,col.name,str(data[col.name]))
    colperrow = 1 if table.columnperrow < 1 else table.columnperrow

    return render(request,
        'adm/viewlist/detail.html',
        {
            'id':id,
            'title': table.description + '详情',
            'tablecolumns':tablecolumns,
            'tableid':tableid,
            'table':table,
            'out_col_data':out_col_data,
            'data':data,
            'colperrow':colperrow,
        })
@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    tableid = kwargs.get('value','')
    if not tableid or not id:
        return render(request, 'adm/viewlist/index')
    tablecolumns = None
    table = None
    col_data = {}
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowedit != 1:
              return JsonResponse(result.tojson())
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(editvisible=1)).order_by('listorder'))
    columnnames = SysHelper.get_column_names(tableid, "EditVisible=1", "ListOrder",False)
    data = SqlHelper.query('select {0} from {1} where {2}'.format(columnnames,table.name,'Id=' + str(id)))[0]
    for col in tablecolumns:
        if col.datatype == 'out':
            col_data[col.name] = SysHelper.get_out_list(col.outsql)
            for c in col_data[col.name]:
                c['selected'] = '1' if c['value'] == data[col.name] else '0'
        elif col.datatype == 'enum':
            enumdata = col.enumrange.split(',')
            enumlist = []
            for e in enumdata:
               selected = '1' if e == data[col.name] else '0'
               enumlist.append({'text':e,'value':e,'selected':selected})
            col_data[col.name] = enumlist
        elif col.datatype == 'radio' or col.datatype == 'checkbox':
            option_data = col.selectrange.split(',')
            options = []
            for text in option_data:
                selected = '1' if text in data[col.name].split(',') else '0'
                options.append({'value':text,'text':text,'selected':selected})
            col_data[col.name] = options
    colperrow = 1 if table.columnperrow < 1 else table.columnperrow

    return render(request,
        'adm/viewlist/edit.html',
        {
            'id':id,
            'title':'编辑' + table.description,
            'tablecolumns':tablecolumns,
            'tableid':tableid,
            'table':table,
            'col_data':col_data,
            'data':data,
            'colperrow': colperrow,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    result.msg = ''
    formdata = request.POST.dict()
    tableid = kwargs.get('id','')
    tablecolumns = None
    table = None
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowadd != 1:
              return JsonResponse(result.tojson())
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(addvisible=1)))
    addmodel = {}
    primarykey_cols = SysHelper.get_column_names(tableid,'PrimaryKey=1','ListOrder')
    for col in tablecolumns:
        #如果这个列属于主键，判断是否已经有值存在
        if col.name in formdata.keys():
            colvalue = ''
            #这个情况下可能选多个值
            if col.datatype == 'checkbox':
                colvalue = ','.join(request.POST.getlist(col.name,''))
            else:
                colvalue = formdata.get(col.name,'')
            value_exist = '0'
            if col.name in primarykey_cols:
                value_exist = SqlHelper.single('select count(*) from {0} where {1}=\'{2}\''.format(table.name,col.name,colvalue))
            if value_exist != '0':
                result.msg += col.description + '字段为主键，值"' + colvalue + '"已存在,'
            else:
                addmodel[col.name] = colvalue
    if result.msg != '':
        return JsonResponse(result.tojson())
    addmodel['CreateDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
    addmodel['ModifyDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
    addmodel['Creator'] = str(request.user.id)
    addmodel['Modifier'] = str(request.user.id)
    sql = 'insert into {0}({1}) values({2})'
    values = ''
    for v in addmodel.values():
        values+="'" + v + "',"
    values = values.strip(',')
    sql = sql.format(table.name,','.join(addmodel.keys()),values)
    SqlHelper.execute(sql)
    affect_rows = SqlHelper.execute(sql)
    result.msg = '影响数据条数' + str(affect_rows)
    result.flag = affect_rows == 1
    return JsonResponse(result.tojson())

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    formdata = request.POST.dict()
    id = kwargs.get('id','')
    tableid = kwargs.get('value','')
    tablecolumns = None
    table = None
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowedit != 1:
              return JsonResponse(result.tojson())
        update_filter = SysTableList.objects.get(id=int(tableid)).forbiddenupdatefilter
        condition = '1=1'
        if update_filter != '':
            condition = update_filter.replace('{UserId}',str(request.user.id))
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(editvisible=1)))
    editmodel = {}
    primarykey_cols = SysHelper.get_column_names(tableid,'PrimaryKey=1','ListOrder')

    for col in tablecolumns:
        colvalue = ''
        #这个情况下可能选多个值
        if col.datatype == 'checkbox':
            colvalue = ','.join(request.POST.getlist(col.name,''))
        else:
            colvalue = formdata.get(col.name,'')
        value_exist = '0'
        if col.name in primarykey_cols:
            value_exist = SqlHelper.single('select count(*) from {0} where {1}=\'{2}\' and Id != {3}'.format(table.name,col.name,colvalue,id))
        if value_exist != '0':
            result.msg += col.description + '字段为主键，值"' + colvalue + '"已存在,'
        else:
            editmodel[col.name] = colvalue
    if result.msg != '':
        return JsonResponse(result.tojson())
    editmodel['ModifyDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
    editmodel['Modifier'] = str(request.user.id)
    sql = 'update {0} set {1} where {2}'
    newvalues = ''
    for key,value in editmodel.items():
        newvalues += "{0}='{1}',".format(key,value)
    newvalues = newvalues.rstrip(',')
    sql = sql.format(table.name,newvalues,'Id=' + str(id) + ' and ' + condition)
    affect_rows = SqlHelper.execute(sql)
    result.msg = '影响数据条数' + str(affect_rows)
    result.flag = affect_rows == 1
    return JsonResponse(result.tojson())

@csrf_exempt
@check_permission
def delete(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    tableid = request.POST.get('value','')
    forbidden_delete_filter = SysTableList.objects.get(id=int(tableid)).forbiddendeletefilter
    condition = '1=1'
    if forbidden_delete_filter != '':
        condition = forbidden_delete_filter.replace('{UserId}',str(request.user.id))
    if len(ids) <= 0:
        result.msg = '操作失败'
        return JsonResponse(result.tojson())

    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowdelete != 1:
              return JsonResponse(result.tojson())

    sqllist = []
    for id in ids:
        sqllist.append('delete from {0} where {1}'.format(table.name,'Id=' + str(id) + ' and ' + condition))
    affect_rows = SqlHelper.bulk_execute(sqllist)
    result.msg = '影响数据条数' + str(affect_rows)
    result.flag = affect_rows == len(ids)
    return JsonResponse(result.tojson())


@csrf_exempt
def get_page_data(request,kwargs):
    assert isinstance(request, HttpRequest)
    page = PageModel(request.POST)
    tableid = page.value

    table = SysTableList.objects.get(id=tableid)
    if table.allowview != 1:
        return JsonResponse({'msg':'请求参数错误'})

    _orderby = ''
    if page.orderdir == 'desc':
        _orderby = '-'
    if page.orderby != '':
        _orderby +=page.orderby
    elif table.defaultsort != '':
        _orderby +=table.defaultsort
    else:
        _orderby +='id'

    condition = '1=1'
    alldata = None
    if page.searchkey != '':
       search_columns = SysHelper.get_column_names(tableid, "SearchVisible=1", "ListOrder")
       condition = ''
       for sc in search_columns:
           condition+=" {0} like '%{1}%' or".format(sc,page.searchkey)
       condition = '(' + condition.rstrip('or') + ')'

    if table.defaultfilter != '':
        table.defaultfilter = table.defaultfilter.replace('{UserId}',str(request.user.id))
        condition += ' and ' + table.defaultfilter

    sql = 'select {0} from {1} where {2} order by {3} limit {4},{5}'
    list_columns = SysHelper.get_column_names(tableid, "ListVisible=1", "ListOrder",False)
    pagedata = SqlHelper.query(sql.format(list_columns,table.name,condition,_orderby,page.start,page.length))
    data_count = SqlHelper.single('select count(*) from {0} where {1}'.format(table.name, condition))
    out_type_column_names = SysHelper.get_column_names(tableid, "ListVisible=1 and DataType='out'", "ListOrder")
    checkbox_or_radio_col_names = SysHelper.get_column_names(tableid, "ListVisible=1 and (DataType='checkbox' or DataType='radio')", "ListOrder")
    file_column_names = SysHelper.get_column_names(tableid, "ListVisible=1 and DataType='file'", "ListOrder")
    custom_columns_names = SysHelper.get_column_names(tableid, "ListVisible=1 and DataType='custom'", "ListOrder")
    rownum = int(page.start)
    for dic in pagedata:
        rownum = rownum + 1
        dic['rownum'] = rownum
        for key in dic:
            if key in out_type_column_names:
                dic[key] = SysHelper.get_out_value(tableid,key,dic[key])
            elif key in custom_columns_names:
                column = SysTableColumn.objects.get(Q(name=key) & Q(tableid = int(tableid)))
                if not column:
                    dic[key] = '获取列对象出错'
                else:
                    dic[key] = column.customcontent.replace('{Id}',str(dic['Id'])).replace('{UserId}',str(request.user.id))
            elif key in file_column_names:
                url = text = style = ''
                if not dic[key] == '':
                    url = 'javascript:alert("无效文件")'
                    text = '无效'
                    style = "class='btn btn-danger'"
                else:
                    filepath = os.path.join(ROOT_PATH,dic[key].lstrip('/').replace('/','\\'))
                    if os.path.exists(filepath) and dic[key] != '':
                        url = '/adm/home/download?fileurl=' + dic[key]
                        text = '下载'
                        style = "class='btn btn-info' download"
                    else:
                        url = 'javascript:alert("无效文件")'
                        text = '无效'
                        style = "class='btn btn-danger'"
                dic[key] = "<a href='{0}' target='_blank' {1}>{2}</a>".format(url,style,text)
            else:
                if key == 'CreateDateTime' or key == 'ModifyDateTime':
                    dic[key] = str(dic[key])
        if table.extendfunction != '':
            dic['ExtendFunction'] = table.extendfunction.replace('{Id}',str(dic['Id'])).replace('{UserId}',str(request.user.id))

    datatable = DataTableModel(page.draw,data_count,data_count,pagedata)

    return JsonResponse(datatable.tojson())

@check_permission
def post_import(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = request.POST.get('tableid','')
    file = request.FILES['file']
    result = SysHelper.import_excel(tableid,file)
    return JsonResponse(result.tojson())

@check_permission
def post_export(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = request.POST.get('tableid','')
    result = SysHelper.export_excel(tableid)

    return JsonResponse(result.tojson())

@check_permission
def post_upload(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    columnid = request.POST.get('columnId','')
    file = request.FILES.get('file')
    dirname = time.strftime('%Y%m%d')
    datepath = 'upload\\' + dirname
    upload_dir = ROOT_PATH + '\\' + datepath
    if not os.path.exists(upload_dir):
        os.makedirs(upload_dir)
    basename = os.path.basename(file.name)
    file_name = os.path.splitext(basename)[0]
    file_ext = os.path.splitext(basename)[1]
    file_name = file_name + '_' + time.strftime('%Y%m%d%H%M%S') + file_ext
    fileurl = '/upload/' + dirname + '/' + file_name
    filepath = upload_dir + '\\' + file_name
    forbidden_file_ext = SysTableColumn.objects.get(id=columnid).forbiddenfileextension
    if forbidden_file_ext != '' and forbidden_file_ext and file_ext.lstrip('.') in forbidden_file_ext.split('|') :
        result.msg = '不允许的文件类型'
        return JsonResponse(result.tojson())
    #保存上传的文件
    f = open(filepath, 'wb')
    for chunk in file.chunks():
        f.write(chunk)
    f.close()
    result.flag = True
    result.data = fileurl
    return JsonResponse(result.tojson())

def download_import_template(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = request.POST.get('tableid','')
    result = SysHelper.download_import_template(tableid)

    return JsonResponse(result.tojson())