from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.util.SqlHelper import SqlHelper
from kingWeb.apps.adm.permission import check_permission
from kingWeb.apps.adm.forms import *

@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/table_list/index.html',
        {
            'title':'表管理',
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    import_type_list = []
    for s in TableImportType:
        import_type_list.append(s)
    return render(request,
        'adm/table_list/add.html',
        {
            'title':'添加表',
            'import_type_list':import_type_list,
         })

@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if not id:
        return render(request, 'adm/table_list/index')
    object = SysTableList.objects.get(id=id)
    import_type_list = []
    for s in TableImportType:
        import_type_list.append(s)
    return render(request,
        'adm/table_list/edit.html',
        {
            'title':'编辑表',
            'object':object,
            'import_type_list':import_type_list,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    modelform = SysTableListForm(request.POST).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('id','')
    obj = SysTableList.objects.get(id=id)
    modelform = SysTableListForm(request.POST,instance=obj).save()
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
    object = SysTableList.objects.filter(id__in=ids).delete()
    SysTableColumn.objects.filter(tableid__in=ids).delete()
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
    if page.searchkey != '':
        alldata = SysTableList.objects.filter(Q(description__icontains=page.searchkey) | Q(name__icontains=page.searchkey)).order_by(_orderby).\
        values('id','name','description','allowview','allowedit','allowadd','allowdelete','isview')
    else:
        alldata = SysTableList.objects.order_by(_orderby).\
        values('id','name','description','allowview','allowedit','allowadd','allowdelete','isview')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['allowview'] = '是' if row['allowview'] == 1 else '否'
        row['allowadd'] = '是' if row['allowadd'] == 1 else '否'
        row['allowedit'] = '是' if row['allowedit'] == 1 else '否'
        row['allowdelete'] = '是' if row['allowdelete'] == 1 else '否'
        row['isview'] = '是' if row['isview'] == 1 else '否'


    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_exempt
def post_copy(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    id = request.POST.get('id','')
    object = SysTableList.objects.get(id=id)
    object.pk = None
    object.save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())


@csrf_exempt
def post_build_column(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    tableid = request.POST.get('id','')
    tablename = SysTableList.objects.get(id=tableid).name

    query_result = SqlHelper.query('desc ' + tablename)
    newmodels = []
    for row in query_result:
        field = row['Field']
        type = row['Type']
        if 'char' in type:
            type = 'string'
        elif 'int' in type or 'bit' in type:
            type = 'int'
        elif 'float' in type or 'decimal' in type:
            type = 'Decimal'
        elif 'datetime' in type:
            type = 'datetime'
        elif 'date' in type:
            type = 'date'
        newmodels.append(SysTableColumn(tableid=tableid,name=field,datatype=type))
    deleted_objects = SysTableColumn.objects.filter(tableid=tableid).delete()
    objects = SysTableColumn.objects.bulk_create(newmodels)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

