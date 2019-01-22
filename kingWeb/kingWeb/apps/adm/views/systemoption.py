from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.apps.adm.permission import check_permission
from kingWeb.apps.adm.forms import *

@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/system_option/index.html',
        {
            'title':'参数管理',
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/system_option/add.html',
        {
            'title':'添加参数',
        })

@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if not id:
        return render(request, 'adm/system_option/index')
    object = SysSystemOption.objects.get(id=id)
    return render(request,
        'adm/system_option/edit.html',
        {
            'title':'编辑参数',
            'id':object.id,
            'code':object.code,
            'value':object.value,
            'description':object.description,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    modelform = SysSystemOptionForm(request.POST).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('id','')
    obj = SysSystemOption.objects.get(id=id)
    modelform = SysSystemOptionForm(request.POST,instance=obj).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
@check_permission
def delete(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    if not ids:
        result.msg = '操作失败'
        return JsonResponse(result.tojson())

    object = SysSystemOption.objects.filter(id__in=ids).delete()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())


@csrf_exempt
def get_page_data(request,kwargs):
    assert isinstance(request, HttpRequest)
    page = PageModel(request.POST)
    _orderby = ''
    if page.orderdir == 'desc':
        _orderby = '-'
    if page.orderby != '':
        _orderby += page.orderby
    else:
        _orderby +='id'

    alldata = None
    if searchkey != '':
        alldata = SysSystemOption.objects.filter(Q(description__icontains=page.searchkey) | Q(code__icontains=page.searchkey)).order_by(_orderby).\
        values('code','value','id','description')
    else:
        alldata = SysSystemOption.objects.order_by(_orderby).\
        values('code','value','id','description')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum

    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

