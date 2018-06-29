from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse
from django.http import HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.contrib.sqlhelper import *
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    tablelist = SysTableList.objects.values('id','name')
    return render(request,
        'adm/table_column/index.html',
        {
            'title':'表结构管理',
            'tablelist':tablelist,
        })

def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    tablelist = SysTableList.objects.values('id','name')
    return render(request,
        'adm/table_column/add.html',
        {
            'title':'添加表结构',
            'tablelist':tablelist,
         })


def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if id == '':
        return render(request, 'adm/table_column/index')
    object = SysTableColumn.objects.get(id=id)
    tablelist = SysTableList.objects.values('id','name')
    return render(request,
        'adm/table_column/edit.html',
        {
            'title':'编辑表结构',
            'id':object.id,
            'name':object.name,
            'description':object.description,
            'tableid':object.tableid,
            'name':object.name,
            'datatype':object.datatype,
            'required':object.required,
            'maxlength':object.maxlength,
            'vieworder':object.vieworder,
            'listorder':object.listorder,
            'editorder':object.editorder,
            'importvisible':object.importvisible,
            'exportvisible':object.exportvisible,
            'viewvisible':object.viewvisible,
            'addvisible':object.addvisible,
            'searchvisible':object.searchvisible,
            'editvisible':object.editvisible,
            'listvisible':object.listvisible,
            'outsql':object.outsql,
            'enumrange':object.enumrange,
            'primarkey':object.primarkey,
            'tablelist':tablelist,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    name = request.POST.get('Name','')
    description = request.POST.get('Description','')
    tableid = request.POST.get('TableId','')
    datatype = request.POST.get('DataType','')
    required = request.POST.get('Required','')
    maxlength = request.POST.get('MaxLength','')
    vieworder = request.POST.get('ViewOrder','')
    listorder = request.POST.get('ListOrder','')
    editorder = request.POST.get('EditOrder','')
    importvisible = request.POST.get('ImportVisible','')
    exportvisible = request.POST.get('ExportVisible','')
    viewvisible = request.POST.get('ViewVisible','')
    addvisible = request.POST.get('AddVisible','')
    searchvisible = request.POST.get('SearchVisible','')
    editvisible = request.POST.get('EditVisible','')
    listvisible = request.POST.get('ListVisible','')
    outsql = request.POST.get('OutSql','')
    enumrange = request.POST.get('EnumRange','')
    primarkey = request.POST.get('PrimarKey','')

    object = SysTableColumn.objects.create(name=name,description=description, tableid=tableid,datatype=datatype,required=required,\
        maxlength=maxlength,vieworder=vieworder,listorder=listorder,editorder=editorder,importvisible=importvisible,exportvisible=exportvisible,\
        viewvisible=viewvisible,addvisible=addvisible,searchvisible=searchvisible,editvisible=editvisible,listvisible=listvisible,\
        outsql=outsql,enumrange=enumrange,primarkey=primarkey)
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('Id','')
    name = request.POST.get('Name','')
    description = request.POST.get('Description','')
    tableid = request.POST.get('TableId','')
    datatype = request.POST.get('DataType','')
    required = request.POST.get('Required','')
    maxlength = request.POST.get('MaxLength','')
    vieworder = request.POST.get('ViewOrder','')
    listorder = request.POST.get('ListOrder','')
    editorder = request.POST.get('EditOrder','')
    importvisible = request.POST.get('ImportVisible','')
    exportvisible = request.POST.get('ExportVisible','')
    viewvisible = request.POST.get('ViewVisible','')
    addvisible = request.POST.get('AddVisible','')
    searchvisible = request.POST.get('SearchVisible','')
    editvisible = request.POST.get('EditVisible','')
    listvisible = request.POST.get('ListVisible','')
    outsql = request.POST.get('OutSql','')
    enumrange = request.POST.get('EnumRange','')
    primarkey = request.POST.get('PrimarKey','')

    object = SysTableColumn.objects.filter(id=id).update(name=name,description=description, tableid=tableid,datatype=datatype,required=required,\
        maxlength=maxlength,vieworder=vieworder,listorder=listorder,editorder=editorder,importvisible=importvisible,exportvisible=exportvisible,\
        viewvisible=viewvisible,addvisible=addvisible,searchvisible=searchvisible,editvisible=editvisible,listvisible=listvisible,\
        outsql=outsql,enumrange=enumrange,primarkey=primarkey)
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_delete(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    if ids == '':
        result.msg = '操作失败'
        return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
    object = SysTableColumn.objects.filter(id__in=ids).delete()
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")


@csrf_exempt
def get_page_data(request,kwargs):
    assert isinstance(request, HttpRequest)
    start = request.POST.get('start','0')
    length = request.POST.get('length','0')
    searchkey = request.POST.get('searchKey','')
    orderby = request.POST.get('orderBy','')
    orderdir = request.POST.get('orderDir','')
    draw = request.POST.get('draw','')
    value = request.POST.get('value','')
    _orderby = ''
    if orderdir == 'desc':
        _orderby = '-'
    if orderby != '':
        _orderby +=orderby
    else:
        _orderby +='id'

    alldata = None
    if 'TableId|' in searchkey:
        tableid = searchkey.split('|')[1]
        alldata = SysTableColumn.objects.filter(tableid=tableid).order_by(_orderby).\
        values('id','name','description','tableid','datatype','addvisible','editvisible','listvisible','searchvisible')
    elif searchkey != '':
        alldata = SysTableColumn.objects.filter(description__icontains=searchkey).order_by(_orderby).\
        values('id','name','description','tableid','datatype','addvisible','editvisible','listvisible','searchvisible')
    else:
        alldata = SysTableColumn.objects.order_by(_orderby).\
        values('id','name','description','tableid','datatype','addvisible','editvisible','listvisible','searchvisible')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['tablename'] = SysTableList.objects.get(id=row['tableid']).name
        row['addvisible'] = '是' if row['addvisible'] == 1 else '否'
        row['editvisible'] = '是' if row['editvisible'] == 1 else '否'
        row['listvisible'] = '是' if row['listvisible'] == 1 else '否'
        row['searchvisible'] = '是' if row['searchvisible'] == 1 else '否'
    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")

@csrf_exempt
def post_copy(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    id = request.POST.get('id','')
    object = SysTableColumn.objects.get(id=id)
    object.pk=None
    object.save()
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")


@csrf_exempt
def setvalue(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]','')
    value = request.POST.get('value','')
    filedname = request.POST.get('filedname','')
    sqllist = []
    for id in ids:
        sqllist.append('update Sys_TableColumn set {0} = {1} where Id={2}'.format(filedname,value,id))
        pass
    sqlhelper.bulk_execute(sqllist)
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

