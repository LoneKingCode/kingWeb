from django.template import RequestContext
from django.views.decorators.csrf import csrf_protect
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.apps.adm.permission import check_permission
from kingWeb.apps.adm.forms import *
from kingWeb.util.WebHelper import WebHelper
@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/module/index.html',
        {
            'title':'模块管理',
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/module/add.html',
        {
            'title':'添加模块',
        })

@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if not id:
        return render(request, 'adm/module/index')
    object = SysModule.objects.get(id=id)
    return render(request,
        'adm/module/edit.html',
        {
            'title':'编辑模块',
            'id':object.id,
            'name':object.name,
            'description':object.description,
        })

@csrf_protect
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    modelform = SysModuleForm(request.POST).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_protect
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('id','')
    obj = SysModule.objects.get(id=id)
    modelform = SysModuleForm(WebHelper.get_post_dic(request.POST),instance=obj).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_protect
@check_permission
def delete(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    if not ids:
        result.msg = '操作失败'
        return JsonResponse(result.tojson())
    object = SysModule.objects.filter(id__in=ids).delete()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())


@csrf_protect
def get_page_data(request,kwargs):
    assert isinstance(request, HttpRequest)
    page = PageModel(request.POST)
    _orderby = ''
    if page.orderdir == 'desc':
        _orderby = '-'
    if page.orderby != '':
        _orderby +=page.orderby
    else:
        _orderby +='id'

    alldata = None
    if page.searchkey != '':
        alldata = SysModule.objects.filter(Q(description__icontains=page.searchkey) | Q(name__icontains=page.searchkey)).order_by(_orderby).\
        values('name','description','id')
    else:
        alldata = SysModule.objects.order_by(_orderby).\
        values('name','description','id')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum

    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

