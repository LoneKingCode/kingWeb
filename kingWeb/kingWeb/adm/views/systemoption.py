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
        'adm/system_option/index.html',
        {
            'title':'参数管理',
        })

def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/system_option/add.html',
        {
            'title':'添加参数',
        })


def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if id == '':
        return render(request, 'adm/system_option/index')
    object = SysSystemOption.objects.get(id=id)
    return render(request,
        'adm/system_option/edit.html',
        {
            'title':'编辑参数',
            'id':object.id,
            'code':object.code,
            'value':object.value,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    value = request.POST.get('Value','')
    code = request.POST.get('Code','')

    object = SysSystemOption.objects.create(value=value,code=code)
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    value = request.POST.get('Value','')
    code = request.POST.get('Code','')
    id = request.POST.get('Id','')
    object = SysSystemOption.objects.filter(id=id).update(value=value,code=code)
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

    object = SysSystemOption.objects.filter(id__in=ids).delete()
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
        alldata = SysSystemOption.objects.filter(description__icontains=searchkey).order_by(_orderby).\
        values('code','value','id')
    else:
        alldata = SysSystemOption.objects.order_by(_orderby).\
        values('code','value','id')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")

