from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse
from django.http import HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.adm.permission import check_permission

def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/log/index.html',
        {
            'title':'日志管理',
        })

def login(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/log/login.html',
        {
            'title':'登陆日志',
        })


def operation(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/log/operation.html',
        {
            'title':'操作管理',
        })

def chart(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/log/chart.html',
        {
            'title':'统计图表',
        })

@csrf_exempt
def delete_login(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    if ids == '':
        result.msg = '操作失败'
        return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
    object = SysLoginlog.objects.filter(id__in=ids).delete()
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def delete_operation(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    if ids == '':
        result.msg = '操作失败'
        return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
    object = SysOperationLog.objects.filter(id__in=ids).delete()
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")


@csrf_exempt
def get_login_log(request,kwargs):
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
        alldata = SysLoginlog.objects.filter(Q(description__icontains=searchkey)|Q(username__icontains=searchkey)).order_by(_orderby).\
        values('clientip','clientinfo','description','id','username')
    else:
        alldata = SysLoginlog.objects.order_by(_orderby).\
        values('clientip','clientinfo','description','id','username')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")

@csrf_exempt
def get_operation_log(request,kwargs):
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
        alldata = SysOperationLog.objects.filter(Q(operationdescription__icontains=searchkey)|Q(username__icontains=searchkey)).order_by(_orderby).\
        values('clientip','clientinfo','operationdescription','operationurl','username')
    else:
        alldata = SysOperationLog.objects.order_by(_orderby).\
        values('clientip','clientinfo','operationdescription','operationurl','username')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")

