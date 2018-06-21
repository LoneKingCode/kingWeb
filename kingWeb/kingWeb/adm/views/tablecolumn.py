from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse
from django.http import HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *

def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/table_column/index.html',
        {
            'title':'表结构管理',
        })

def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    table_columns = SysTableColumn.objects.values('id','name')
    return render(request,
        'adm/table_column/add.html',
        {
            'title':'添加表结构',
            'table_columns':table_columns
        })


def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if id == '':
        return render(request, 'adm/table_column/index')
    object = SysTableColumn.objects.get(id=id)
    table_columns = SysTableColumn.objects.values('id','name')
    return render(request,
        'adm/table_column/edit.html',
        {
            'title':'编辑表结构',
            'id':object.id,
            'name':object.name,
            'leader':object.leader,
            'description':object.description,
            'parentid':object.parentid,
            'table_columns':table_columns
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    parentid = request.POST.get('ParentId','')
    name = request.POST.get('Name','')
    leader = request.POST.get('Leader','')
    description = request.POST.get('Description','')
    object = SysTableColumn.objects.create(parentid=parentid,name=name,leader=leader,description=description)
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    parentid = request.POST.get('ParentId','')
    id = request.POST.get('Id','')
    name = request.POST.get('Name','')
    leader = request.POST.get('Leader','')
    description = request.POST.get('Description','')
    object = SysTableColumn.objects.filter(id=id).update(parentid=parentid,name=name,leader=leader,description=description)
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
    hassub = False
    for id in ids:
        objs = SysTableColumn.objects.filter(parentid=id)
        table_columnname = SysTableColumn.objects.get(id=id).name
        if(objs.count() > 0):
            result.msg += table_columnname + "下有子表结构:"
            hassub = True
            for o in objs:
                 result.msg +=o.name + ' '
            result.msg+='</br>'
    if(hassub):
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
    if searchkey != '':
        alldata = SysTableColumn.objects.filter(description__icontains=searchkey).order_by(_orderby).\
        values('name','parentid','leader','description','id')
    else:
        alldata = SysTableColumn.objects.order_by(_orderby).\
        values('name','parentid','leader','description','id')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        pid = row['parentid']
        if pid != 0 and pid != None:
            row['parentname'] = SysTableColumn.objects.get(id=pid).name
        else:
            row['parentname'] = '无'

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")

