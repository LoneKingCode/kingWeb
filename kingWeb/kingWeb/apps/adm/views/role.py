from django.template import RequestContext
from django.views.decorators.csrf import csrf_protect
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.apps.adm.forms import *
from kingWeb.util.WebHelper import WebHelper
from kingWeb.apps.adm.permission import check_permission
@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/role/index.html',
        {
            'title':'角色管理',
        })
@check_permission
def authen(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/role/authen.html',
        {
            'title':'角色授权',
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/role/add.html',
        {
            'title':'添加角色',
        })

@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if not id:
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

@csrf_protect
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    modelform = SysRoleForm(request.POST).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_protect
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('id','')
    obj = SysRole.objects.get(id=id)
    modelform = SysRoleForm(WebHelper.get_post_dic(request.POST),instance=obj).save()
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

    object = SysRole.objects.filter(id__in=ids).delete()
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
        alldata = SysRole.objects.filter(Q(description__icontains=page.searchkey) | Q(name__icontains=page.searchkey)).order_by(_orderby).\
        values('name','description','id')
    else:
        alldata = SysRole.objects.order_by(_orderby).\
        values('name','description','id')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum


    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_protect
def get_list(request,kwargs):
    assert isinstance(request,HttpRequest)
    alldata = SysRole.objects.values('id','name')
    result = []
    for row in alldata:
        result.append({'pId':0,'name':row['name'],'id':row['id']})
    return JsonResponse(result,safe=False)

@csrf_protect
def get_menu_list(request,kwargs):
    assert isinstance(request,HttpRequest)
    allmenu = SysMenu.objects.values('id','name','parentid','moduleid','type')
    allmodule = SysModule.objects.values('id','name')
    result = []
    for row in allmenu:
        type = int(row['type'])
        pId = (str(row['moduleid']) + '_m') if type == MenuType.module.value else row['parentid']
        result.append({'pId': str(pId),'name':row['name'],'id':str(row['id']),'open':type == MenuType.module.value})
    for row in allmodule:
            result.append({'pId':'0','name':'--------' + row['name'] + '--------' ,'id':str(row['id']) + '_m','open':True,'type':'module'})
    return JsonResponse(result,safe=False)

@csrf_protect
def get_role_menus(request,kwargs):
    assert isinstance(request,HttpRequest)
    roleid = request.POST.get('roleId','')
    alldata = SysRoleMenu.objects.filter(role__id=roleid).values('id','menu__id')
    result = []
    for row in alldata:
        result.append({'id':row['id'],'menuId':row['menu__id']})
    return JsonResponse(result,safe=False)

@csrf_protect
@check_permission
def auth_menus(request,kwargs):
    assert isinstance(request,HttpRequest)
    result = ResultModel()
    roleids = request.POST.getlist('RoleIds[]')
    menuids = request.POST.getlist('MenuIds[]')
    newmodels = []
    roles = SysRole.objects.filter(id__in=roleids)
    menus = SysMenu.objects.filter(id__in=menuids)
    if len(menus) > 0 and len(roles) > 0:
        SysRoleMenu.objects.filter(role__in=roles).delete()
        for role in roles:
            SysRoleMenu.objects.filter(role=role).delete()
            for menu in menus:
                newmodels.append(SysRoleMenu(role=role,menu=menu))
        SysRoleMenu.objects.bulk_create(newmodels)
        result.msg = '操作成功'
        result.flag = True
    else:
        result.msg = '操作失败'
    return JsonResponse(result.tojson())
