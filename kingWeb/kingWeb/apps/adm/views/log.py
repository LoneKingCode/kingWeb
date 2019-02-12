from django.template import RequestContext
from django.views.decorators.csrf import csrf_protect
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
from django.db.models.aggregates import Count, Sum
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.apps.adm.permission import check_permission
from datetime import datetime,timedelta
import calendar
from dateutil.relativedelta import relativedelta
from django.utils import timezone
import pytz
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
            'title':'操作日志',
        })

def chart(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/log/chart.html',
        {
            'title':'统计图表',
        })

@csrf_protect
@check_permission
def clear_login(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    object = SysLoginlog.objects.all().delete()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_protect
@check_permission
def clear_operation(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    object = SysOperationLog.objects.all().delete()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())


@csrf_protect
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
        alldata = SysLoginlog.objects.filter(Q(description__icontains=searchkey) | Q(username__icontains=searchkey)).order_by(_orderby).\
        values('clientip','clientinfo','description','id','username','createdatetime')
    else:
        alldata = SysLoginlog.objects.order_by(_orderby).\
        values('clientip','clientinfo','description','id','username','createdatetime')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['createdatetime'] = str(row['createdatetime'])

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_protect
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
        alldata = SysOperationLog.objects.filter(Q(operationdescription__icontains=searchkey) | Q(username__icontains=searchkey)).order_by(_orderby).\
        values('clientip','clientinfo','operationdescription','operationurl','username','createdatetime')
    else:
        alldata = SysOperationLog.objects.order_by(_orderby).\
        values('clientip','clientinfo','operationdescription','operationurl','username','createdatetime')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['createdatetime'] = str(row['createdatetime'])

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_protect
def get_chart_by_day(request,kwargs):
    assert isinstance(request, HttpRequest)
    xaxis = []
    visitors = []
    visitedpage = []
    result = {}
    nowdate = timezone.now()
    for hour in range(0,24):
        xaxis.append(str(hour) + '时')
        start = nowdate.strftime("%Y-%m-%d ") + str(hour).zfill(2) + ":00:00"
        end = nowdate.strftime("%Y-%m-%d ") + str(hour).zfill(2) + ":59:59"
        visitors.append(len(SysOperationLog.objects.values('clientip').annotate(clientcount=Count('clientip')).filter(createdatetime__range=(start,end))))
        visitedpage.append(len(SysOperationLog.objects.filter(createdatetime__range=(start,end))))
    result['xAxis'] = xaxis
    result['visitors'] = visitors
    result['visitedPage'] = visitedpage
    return JsonResponse(result,safe=False)

@csrf_protect
def get_chart_by_week(request,kwargs):
    assert isinstance(request, HttpRequest)
    xaxis = []
    visitors = []
    visitedpage = []
    result = {}
    lastweekdate = timezone.now() + relativedelta(days=-7)
    for week in range(1,8):
        lastweekdate = lastweekdate + relativedelta(days=+1)
        xaxis.append(lastweekdate.strftime("%Y-%m-%d"))
        start = lastweekdate.strftime("%Y-%m-%d") + " 00:00:00"
        end = lastweekdate.strftime("%Y-%m-%d") + " 23:59:59"
        visitors.append(len(SysOperationLog.objects.values('clientip').annotate(clientcount=Count('clientip')).filter(createdatetime__range=(start,end))))
        visitedpage.append(len(SysOperationLog.objects.filter(createdatetime__range=(start,end))))

    result['xAxis'] = xaxis
    result['visitors'] = visitors
    result['visitedPage'] = visitedpage
    return JsonResponse(result,safe=False)

@csrf_protect
def get_chart_by_month(request,kwargs):
    assert isinstance(request, HttpRequest)
    xaxis = []
    visitors = []
    visitedpage = []
    result = {}
    lastmonthdate = timezone.now() - relativedelta(months=+1)
    for day in range(1,31):
        lastmonthdate += relativedelta(days=+1)
        xaxis.append(lastmonthdate.strftime("%m-%d"))
        start = lastmonthdate.strftime("%Y-%m-%d") + " 00:00:00"
        end = lastmonthdate.strftime("%Y-%m-%d") + " 23:59:59"
        visitors.append(len(SysOperationLog.objects.values('clientip').annotate(clientcount=Count('clientip')).filter(createdatetime__range=(start,end))))
        visitedpage.append(len(SysOperationLog.objects.filter(createdatetime__range=(start,end))))

    result['xAxis'] = xaxis
    result['visitors'] = visitors
    result['visitedPage'] = visitedpage
    return JsonResponse(result,safe=False)

@csrf_protect
def get_chart_by_year(request,kwargs):
    assert isinstance(request, HttpRequest)
    xaxis = []
    visitors = []
    visitedpage = []
    result = {}
    lastyeardate = timezone.now() - relativedelta(years=+1)
    for month in range(0,12):
        lastyeardate += relativedelta(months=+1)
        xaxis.append(lastyeardate.strftime("%Y-%m"))
        start = lastyeardate.strftime("%Y-%m") + "-01 00:00:00"
        monthrange = calendar.monthrange(lastyeardate.year,lastyeardate.month)[1]
        end = lastyeardate.strftime("%Y-%m-") + str(monthrange) + " 23:59:59"
        visitors.append(len(SysOperationLog.objects.values('clientip').annotate(clientcount=Count('clientip')).filter(createdatetime__range=(start,end))))
        visitedpage.append(len(SysOperationLog.objects.filter(createdatetime__range=(start,end))))

    result['xAxis'] = xaxis
    result['visitors'] = visitors
    result['visitedPage'] = visitedpage
    return JsonResponse(result,safe=False)

