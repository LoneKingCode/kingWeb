from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.util.SqlHelper import *
from kingWeb.adm.permission import check_permission
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
    if id == '':
        return render(request, 'adm/table_list/index')
    object = SysTableList.objects.get(id=id)
    import_type_list = []
    for s in TableImportType:
        import_type_list.append(s)
    return render(request,
        'adm/table_list/edit.html',
        {
            'title':'编辑表',
            'id':object.id,
            'name':object.name,
            'description':object.description,
            'deletetablename':object.deletetablename,
            'allowview':object.allowview,
            'allowadd':object.allowadd,
            'allowedit':object.allowedit,
            'allowdelete':object.allowdelete,
            'allowimport':object.allowimport,
            'allowexport':object.allowexport,
            'importtype':object.importtype,
            'isview':object.isview,
            'defaultsort':object.defaultsort,
            'forbiddendeletefilter':object.forbiddendeletefilter,
            'forbiddenupdatefilter':object.forbiddenupdatefilter,
            'forbiddenaddfilter':object.forbiddenaddfilter,
            'defaultfilter':object.defaultfilter,
            'extendfunction':object.extendfunction,
            'import_type_list':import_type_list,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    name = request.POST.get('Name','')
    description = request.POST.get('Description','')
    deletetablename = request.POST.get('DeleteTableName','')
    allowview = request.POST.get('AllowView','')
    allowadd = request.POST.get('AllowAdd','')
    allowedit = request.POST.get('AllowEdit','')
    allowdelete = request.POST.get('AllowDelete','')
    allowimport = request.POST.get('AllowImport','')
    allowexport = request.POST.get('AllowExport','')
    importtype = request.POST.get('ImportType','')
    isview = request.POST.get('IsView','')
    defaultsort = request.POST.get('DefaultSort','')
    forbiddendeletefilter = request.POST.get('ForbiddenDeleteFilter','')
    forbiddenupdatefilter = request.POST.get('ForbiddenUpdateFilter','')
    forbiddenaddfilter = request.POST.get('ForbiddenAddFilter','')
    defaultfilter = request.POST.get('DefaultFilter','')
    extendfunction = request.POST.get('ExtendFunction','')

    object = SysTableList.objects.create(name=name,description=description,deletetablename=deletetablename,allowview=allowview,\
      allowadd=allowadd,allowedit=allowedit,allowdelete=allowdelete,allowimport=allowimport,allowexport=allowexport,importtype=importtype,\
   isview=isview,defaultsort=defaultsort, forbiddendeletefilter=forbiddendeletefilter,forbiddenupdatefilter=forbiddenupdatefilter,\
   forbiddenaddfilter=forbiddenaddfilter,defaultfilter=defaultfilter,extendfunction=extendfunction)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('Id','')
    name = request.POST.get('Name','')
    description = request.POST.get('Description','')
    deletetablename = request.POST.get('DeleteTableName','')
    allowview = request.POST.get('AllowView','')
    allowadd = request.POST.get('AllowAdd','')
    allowedit = request.POST.get('AllowEdit','')
    allowdelete = request.POST.get('AllowDelete','')
    allowimport = request.POST.get('AllowImport','')
    allowexport = request.POST.get('AllowExport','')
    importtype = request.POST.get('ImportType','')
    isview = request.POST.get('IsView','')
    defaultsort = request.POST.get('DefaultSort','')
    forbiddendeletefilter = request.POST.get('ForbiddenDeleteFilter','')
    forbiddenupdatefilter = request.POST.get('ForbiddenUpdateFilter','')
    forbiddenaddfilter = request.POST.get('ForbiddenAddFilter','')
    defaultfilter = request.POST.get('DefaultFilter','')
    extendfunction = request.POST.get('ExtendFunction','')

    object = SysTableList.objects.filter(id=id).update(name=name,description=description,deletetablename=deletetablename,allowview=allowview,\
      allowadd=allowadd,allowedit=allowedit,allowdelete=allowdelete,allowimport=allowimport,allowexport=allowexport,importtype=importtype,\
   isview=isview,defaultsort=defaultsort, forbiddendeletefilter=forbiddendeletefilter,forbiddenupdatefilter=forbiddenupdatefilter,\
   forbiddenaddfilter=forbiddenaddfilter,defaultfilter=defaultfilter,extendfunction=extendfunction)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
@check_permission
def delete(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    if ids == '':
        result.msg = '操作失败'
        return JsonResponse(result.tojson())
    object = SysTableList.objects.filter(id__in=ids).delete()
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
        alldata = SysTableList.objects.filter(description__icontains=searchkey).order_by(_orderby).\
        values('id','name','description','allowview','allowadd','allowedit','allowdelete','isview')
    else:
        alldata = SysTableList.objects.order_by(_orderby).\
        values('id','name','description','allowview','allowadd','allowedit','allowdelete','isview')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['allowview'] = '是' if row['allowview'] == 1 else '否'
        row['allowadd'] = '是' if row['allowadd'] == 1 else '否'
        row['allowedit'] = '是' if row['allowedit'] == 1 else '否'
        row['allowdelete'] = '是' if row['allowdelete'] == 1 else '否'
        row['isview'] = '是' if row['isview'] == 1 else '否'


    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

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
        newmodels.append(SysTableColumn(tableid=tableid,name=field,datatype=type))
    deleted_objects = SysTableColumn.objects.filter(tableid=tableid).delete()
    objects = SysTableColumn.objects.bulk_create(newmodels)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

