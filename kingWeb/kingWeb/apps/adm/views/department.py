from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *

from kingWeb.apps.adm.permission import check_permission
@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/department/index.html',
        {
            'title':'部门管理',
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    departments = SysDepartment.objects.values('id','name')
    return render(request,
        'adm/department/add.html',
        {
            'title':'添加部门',
            'departments':departments
        })

@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if not id:
        return render(request, 'adm/department/index')
    object = SysDepartment.objects.get(id=id)
    departments = SysDepartment.objects.values('id','name').filter(~Q(id=id))
    return render(request,
        'adm/department/edit.html',
        {
            'title':'编辑部门',
            'id':object.id,
            'name':object.name,
            'leader':object.leader,
            'description':object.description,
            'parentid':object.parentid,
            'departments':departments
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    parentid = request.POST.get('ParentId','')
    name = request.POST.get('Name','')
    leader = request.POST.get('Leader','')
    description = request.POST.get('Description','')
    object = SysDepartment.objects.create(parentid=parentid,name=name,leader=leader,description=description)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    parentid = request.POST.get('ParentId','')
    id = request.POST.get('Id','')
    name = request.POST.get('Name','')
    leader = request.POST.get('Leader','')
    description = request.POST.get('Description','')
    object = SysDepartment.objects.filter(id=id).update(parentid=parentid,name=name,leader=leader,description=description)
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
    hassub = False
    for id in ids:
        objs = SysDepartment.objects.filter(parentid=id)
        departmentname = SysDepartment.objects.get(id=id).name
        if(objs.count() > 0):
            result.msg += departmentname + "下有子部门:"
            hassub = True
            for o in objs:
                 result.msg +=o.name + ' '
            result.msg+='</br>'
    if(hassub):
         return JsonResponse(result.tojson())
    object = SysDepartment.objects.filter(id__in=ids).delete()
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
        alldata = SysDepartment.objects.filter(Q(description__icontains=searchkey) | Q(name__icontains=searchkey)).order_by(_orderby).\
        values('name','parentid','leader','description','id')
    else:
        alldata = SysDepartment.objects.order_by(_orderby).\
        values('name','parentid','leader','description','id')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        pid = row['parentid']
        if pid != 0 and pid != None:
            row['parentname'] = SysDepartment.objects.get(id=pid).name
        else:
            row['parentname'] = '无'

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_exempt
def get_list(request,kwargs):
    assert isinstance(request,HttpRequest)
    departments = SysDepartment.objects.values('id','name')
    result = []
    for row in departments:
            result.append({'pId':'0','name': row['name'] ,'id':str(row['id'])})
    return JsonResponse(result,safe=False)
