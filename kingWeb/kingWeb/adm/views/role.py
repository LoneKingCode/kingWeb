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
        'adm/role/index.html',
        {
            'title':'角色管理',
        })

def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/role/add.html',
        {
            'title':'添加角色',
        })


def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if id == '':
        return render(request, 'adm/role/index')
    object = SysRole.objects.get(id=id)
    return render(request,
        'adm/role/edit.html',
        {
            'title':'编辑角色',
            'id':object.id,
            'name':object.name,
            'description':object.description,
        })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    name = request.POST.get('Name','')
    description = request.POST.get('Description','')
    object = SysRole.objects.create(name=name,description=description)
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('Id','')
    name = request.POST.get('Name','')
    description = request.POST.get('Description','')
    object = SysRole.objects.filter(id=id).update(name=name,description=description)
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

    object = SysRole.objects.filter(id__in=ids).delete()
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
        alldata = SysDepartment.objects.filter(Q(description__icontains=searchkey) | Q(name__icontains=searchkey)).order_by(_orderby).\
        values('name','description','id')
    else:
        alldata = SysRole.objects.order_by(_orderby).\
        values('name','description','id')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum


    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")

@csrf_exempt
def get_list(request,kwargs):
    assert isinstance(request,HttpRequest)
    alldata = SysRole.objects.values('id','name')
    result = []
    for row in alldata:
        result.append({'pid':0,'name':row['name'],'id':row['id']})
    return HttpResponse(json.dumps(result), content_type="application/json")

@csrf_exempt
def get_menu_list(request,kwargs):
    assert isinstance(request,HttpRequest)
    allmenu = SysMenu.objects.values('id','name','parentid','moduleid','type')
    allmodule = SysModule.objects.values('id','name')
    result = []
    for row in allmenu:
        type = int(row['type'])
        pid = (row['moduleid'] + '_m') if type == MenuType.模块.value else row['parentid']
        result.append({'pid': pid,'name':row['name'],'id':row['id'],'open':type == MenuType.模块.value})
    for row in allmodule:
            result.append({'pid':0,'name':'--------' + row['name'] + '--------' ,'id':row['id'] + '_m','open':False})
    return HttpResponse(json.dumps(result), content_type="application/json")

@csrf_exempt
def get_role_menus(request,kwargs):
    assert isinstance(request,HttpRequest)
    roleid = kwargs.get('roleId','')
    alldata = SysRoleMenu.objects.filter(roleid=roleid).values('id','menuId')
    result = []
    for row in alldata:
        result.append({'id':row['id'],'menuId':row['menuid']})
    return HttpResponse(json.dumps(result), content_type="application/json")

@csrf_exempt
def auth_menus(request,kwargs):
    assert isinstance(request,HttpRequest)
    result = ResultModel()
    roleids = request.POST.getlist('RoleIds[]')
    menuids = request.POST.getlist('MenuIds[]')
    newmodels = []
    if menuids.count() > 0 and roleids.count() > 0:
        for roleid in roleids:
            SysRoleMenu.objects.filter(roleid=roleid).delete()
        for menuid in menuids:
            newmodels.append(SysRoleMenu(roleid=roleid,menuid=menuid))
        SysRoleMenu.objects.bulk_create(newmodels)
        result.msg = '操作成功'
        result.flag = True
    else:
        result.msg='操作失败'
    return HttpResponse(json.dumps(result), content_type="application/json")
