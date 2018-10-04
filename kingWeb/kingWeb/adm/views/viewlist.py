from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
import time
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.util.SqlHelper import SqlHelper
from kingWeb.util.SysHelper import SysHelper
from kingWeb.adm.permission import check_permission

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

        table_top_extendfunction = table.topextendfunction.replace('{UserId}',str(request.user.id))
    return render(request,
        'adm/viewlist/index.html',
        {
            'title':table_desc + '管理',
            'tablecolumns':tablecolumns,
            'tableid':tableid,
            'table':table,
            'table_top_extendfunction':table_top_extendfunction
        })

@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = kwargs.get('id','')
    columns = None
    table = None
    enum_col_data = {}
    out_col_data = {}
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowadd != 1:
            return render(request,'/adm/home/error.html')
        table_desc = table.description
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(addvisible=1)).order_by('listorder'))
    for col in tablecolumns:
        if col.datatype == 'out':
            out_col_data[col.name] = SysHelper.get_out_list(col.outsql)
        elif col.datatype == 'enum':
            enumdata = col.enumrange.split(',')
            enumlist = []
            for e in enumdata:
               enumlist.append(e)
            enum_col_data[col.name] = enumlist


    return render(request,
        'adm/viewlist/add.html',
        {
            'title':'添加' + table.description,
            'tablecolumns':tablecolumns,
            'tableid':tableid,
            'table':table,
            'enum_col_data':enum_col_data,
            'out_col_data':out_col_data,
        })

@check_permission
def detail(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    tableid = kwargs.get('value','')
    if tableid == '' or id == '':
        return render(request, 'adm/viewlist/index')
    tablecolumns = None
    table = None
    out_col_data = {}
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowview != 1:
              return JsonResponse(result.tojson())
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(viewvisible=1)).order_by('listorder'))
    columnnames = SysHelper.get_column_names(tableid, "viewvisible=1", "ListOrder")
    data = SqlHelper.query('select {0} from {1} where {2}'\
        .format(columnnames,table.name,'Id=' + str(id)))[0]
    for col in tablecolumns:
        if col.datatype == 'out':
            outdata_arr = col.outsql.split('|') #Example: Id,Name|Sys_Department|ParentId=0
            colnames = outdata_arr[0].split(',') # value,text
            tablename = outdata_arr[1]
            condition = outdata_arr[2]
            primarkey = colnames[0] #作为下拉菜单value的列
            textkey = colnames[1] #作为下拉菜单的text的列
            outdatalist = SqlHelper.query('select {0} as value,{1} as text from {2} where {3}'.\
                format(primarkey,textkey,tablename,'Id=' + str(data[col.name])))
            out_col_data[col.name] = outdatalist

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
        })
@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    tableid = kwargs.get('value','')
    if tableid == '' or id == '':
        return render(request, 'adm/viewlist/index')
    tablecolumns = None
    table = None
    enum_col_data = {}
    out_col_data = {}
    if tableid != '':
        table = SysTableList.objects.get(id=int(tableid))
        if table.allowedit != 1:
              return JsonResponse(result.tojson())
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(editvisible=1)).order_by('listorder'))
    columnnames = SysHelper.get_column_names(tableid, "EditVisible=1", "ListOrder")
    data = SqlHelper.query('select {0} from {1} where {2}'\
        .format(columnnames,table.name,'Id=' + str(id)))[0]
    for col in tablecolumns:
        if col.datatype == 'out':
            out_col_data[col.name] = SysHelper.get_out_list(col.outsql)
        elif col.datatype == 'enum':
            enumdata = col.enumrange.split(',')
            enumlist = []
            for e in enumdata:
               enumlist.append(e)
            enum_col_data[col.name] = enumlist

    return render(request,
        'adm/viewlist/edit.html',
        {
            'id':id,
            'title':'编辑' + table.description,
            'tablecolumns':tablecolumns,
            'tableid':tableid,
            'table':table,
            'enum_col_data':enum_col_data,
            'out_col_data':out_col_data,
            'data':data,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
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
    for col in tablecolumns:
        if col.name in formdata.keys():
            addmodel[col.name] = formdata.get(col.name,'')
    addmodel['CreateDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
    addmodel['ModifyDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
    addmodel['Creator'] = str(request.user.id)
    addmodel['Modifier'] = str(request.user.id)
    sql = 'insert into {0}({1}) values({2})'
    sql = sql.format(table.name,\
        ','.join(addmodel.keys()),\
        "'" + ','.join(addmodel.values()).replace(',' , "','") + "'")
    SqlHelper.execute(sql)
    result.msg = '操作成功'
    result.flag = True
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
            condition = update_filter
        tablecolumns = list(SysTableColumn.objects.filter(Q(tableid=int(tableid)) & Q(editvisible=1)))
    editmodel = {}
    for col in tablecolumns:
        if col.name in formdata.keys():
            editmodel[col.name] = formdata.get(col.name,'')

    editmodel['ModifyDateTime'] = time.strftime("%Y-%m-%d %H:%M:%S")
    editmodel['Modifier'] = str(request.user.id)
    sql = 'update {0} set {1} where {2}'
    newvalues = ''
    for key,value in editmodel.items():
        newvalues += "{0}='{1}',".format(key,value)
    newvalues = newvalues.rstrip(',')
    sql = sql.format(table.name,newvalues,'Id=' + str(id) + ' and ' + condition)
    SqlHelper.execute(sql)
    result.msg = '操作成功'
    result.flag = True
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
        condition = forbidden_delete_filter
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
    SqlHelper.bulk_execute(sqllist)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())


@csrf_exempt
def get_page_data(request,kwargs):
    assert isinstance(request, HttpRequest)
    start = request.POST.get('start','0')
    length = request.POST.get('length','0')
    searchkey = request.POST.get('searchKey','')
    orderby = request.POST.get('orderBy','')
    orderdir = request.POST.get('orderDir','')
    draw = request.POST.get('draw','')
    tableid = request.POST.get('value','')

    table = SysTableList.objects.get(id=tableid)
    if table.allowview != 1:
        return JsonResponse({'msg':'请求参数错误'})

    _orderby = ''
    if orderdir == 'desc':
        _orderby = '-'

    if orderby != '':
        _orderby +=orderby
    elif table.defaultsort != '':
        _orderby +=table.defaultsort
    else:
        _orderby +='id'

    condition = '1=1'
    alldata = None
    if searchkey != '':
       search_columns = SysHelper.get_column_names(tableid, "SearchVisible=1", "ListOrder").split(',')
       condition = ''
       for sc in search_columns:
           condition+=" {0} like '%{1}%' or".format(sc,searchkey)
       condition = '(' + condition.rstrip('or') + ')'

    if table.defaultfilter != '':
        table.defaultfilter = table.defaultfilter.replace('{UserId}',str(request.user.id))
        condition += ' and ' + table.defaultfilter

    sql = 'select {0} from {1} where {2} order by {3} limit {4},{5}'
    list_columns = SysHelper.get_column_names(tableid, "ListVisible=1", "ListOrder")
    pagedata = SqlHelper.query(sql.format(list_columns,table.name,condition,_orderby,start,length))
    data_count = SqlHelper.single('select count(*) from {0} where {1}'.format(table.name, condition))
    out_type_column_names = SysHelper.get_column_names(tableid, "ListVisible=1 and DataType='out'", "ListOrder").split(',')

    rownum = int(start)
    for dic in pagedata:
        rownum = rownum + 1
        dic['rownum'] = rownum
        for key in dic:
            if key in out_type_column_names:
                dic[key] = SysHelper.get_out_value(tableid,key,dic[key])
            else:
                if key == 'CreateDateTime' or key == 'ModifyDateTime':
                    dic[key] = str(dic[key])
        if table.extendfunction != '':
            dic['ExtendFunction'] = table.extendfunction.replace('{Id}',str(dic['Id'])).replace('{UserId}',str(request.user.id))

    datatable = DataTableModel(draw,data_count,data_count,pagedata)

    return JsonResponse(datatable.tojson())

@check_permission
def post_import(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = request.POST.get('tableid','')
    file = request.FILES['excelFile']
    result = SysHelper.import_excel(tableid,file)
    return JsonResponse(result.tojson())

@check_permission
def post_export(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = request.POST.get('tableid','')
    result = SysHelper.export_excel(tableid)

    return JsonResponse(result.tojson())

def download_import_template(request,kwargs):
    assert isinstance(request, HttpRequest)
    tableid = request.POST.get('tableid','')
    result = SysHelper.download_import_template(tableid)

    return JsonResponse(result.tojson())