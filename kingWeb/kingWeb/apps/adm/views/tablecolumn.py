from django.template import RequestContext
from django.views.decorators.csrf import csrf_protect
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.util.SqlHelper import *
from kingWeb.apps.adm.permission import check_permission
from kingWeb.apps.adm.forms import *
from kingWeb.util.WebHelper import WebHelper
@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    tablelist = SysTableList.objects.values('id','name')
    return render(request,
        'adm/table_column/index.html',
        {
            'title':'表结构管理',
            'tablelist':tablelist,
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    tablelist = SysTableList.objects.values('id','name')
    return render(request,
        'adm/table_column/add.html',
        {
            'title':'添加表结构',
            'tablelist':tablelist,
            'datatypes':DataType,
         })

@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if not id:
        return render(request, 'adm/table_column/index')
    object = SysTableColumn.objects.get(id=id)
    tablelist = SysTableList.objects.values('id','name')
    return render(request,
        'adm/table_column/edit.html',
        {
            'title':'编辑表结构',
            'object':object,
            'tablelist':tablelist,
            'datatypes':DataType,
        })

@csrf_protect
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    modelform = SysTableColumnForm(request.POST).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_protect
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('id','')
    obj = SysTableColumn.objects.get(id=id)
    modelform = SysTableColumnForm(WebHelper.get_post_dic(request.POST),instance=obj).save()
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
    object = SysTableColumn.objects.filter(id__in=ids).delete()
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
    if 'TableId|' in page.searchkey:
        tableid = page.searchkey.split('|')[1]
        alldata = SysTableColumn.objects.filter(tableid=tableid).order_by(_orderby).\
        values('id','name','description','tableid','datatype','addvisible','editvisible','listvisible','searchvisible')
    elif page.searchkey != '':
        alldata = SysTableColumn.objects.filter(description__icontains=page.searchkey).order_by(_orderby).\
        values('id','name','description','tableid','datatype','addvisible','editvisible','listvisible','searchvisible')
    else:
        alldata = SysTableColumn.objects.order_by(_orderby).\
        values('id','name','description','tableid','datatype','addvisible','editvisible','listvisible','searchvisible')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['tablename'] = SysTableList.objects.get(id=row['tableid']).name
        row['addvisible'] = '是' if row['addvisible'] == 1 else '否'
        row['editvisible'] = '是' if row['editvisible'] == 1 else '否'
        row['listvisible'] = '是' if row['listvisible'] == 1 else '否'
        row['searchvisible'] = '是' if row['searchvisible'] == 1 else '否'
    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_protect
def post_copy(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    id = request.POST.get('id','')
    object = SysTableColumn.objects.get(id=id)
    object.pk = None
    object.save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())


@csrf_protect
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
    SqlHelper.bulk_execute(sqllist)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

