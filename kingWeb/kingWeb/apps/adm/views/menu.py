from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest,QueryDict
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
        'adm/menu/index.html',
        {
            'title':'菜单管理',
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    parentid = kwargs.get('id','')
    moduleid = ''
    parentname = ''
    modules = SysModule.objects.values('id','name')
    if parentid != '':
        menu = SysMenu.objects.get(id=pid)
        parentname = menu.name
        moduleid = menu.moduleid
    else:
        moduleid = modules[0]['id']
    return render(request,
        'adm/menu/add.html',
        {
            'title':'添加菜单',
            'parentid':parentid,
            'parentname':parentname,
            'moduleid':moduleid,
            'modules':modules
         })

@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if not id:
        return render(request, 'adm/menu/index')
    object = SysMenu.objects.get(id=id)
    modules = SysModule.objects.values('id','name')
    return render(request,
        'adm/menu/edit.html',
        {
            'title':'编辑菜单',
            'id':object.id,
            'name':object.name,
            'url':object.url,
            'icon':object.icon,
            'listorder':object.listorder,
            'parentid':object.parentid,
            'moduleid':object.moduleid,
            'parentname': SysMenu.objects.get(id=object.parentid).name if object.parentid != 0 else '',
            'modules':modules
         })

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    parentid = request.POST.get('parentid','')
    postdic = QueryDict.copy(request.POST)
    if not parentid:
        postdic['parentid'] = '0'
    type = get_menu_type(parentid) #根据父菜单设置此子菜单的类型
    postdic['type'] = type
    modelform = SysMenuForm(postdic).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('id','')
    parentid = request.POST.get('parentid','')
    obj = SysMenu.objects.get(id=id)
    postdic = QueryDict.copy(request.POST)
    if not parentid:
        postdic['parentid'] = '0'
    type = get_menu_type(parentid) #根据父菜单设置此子菜单的类型
    postdic['type'] = type
    modelform = SysMenuForm(postdic,instance=obj).save()
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
    object = SysMenu.objects.filter(id__in=ids).delete()
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
        _orderby +=page.orderby
    else:
        _orderby +='id'

    alldata = None
    if page.searchkey != '':
        alldata = SysMenu.objects.filter(Q(url__icontains=page.searchkey) | Q(name__icontains=page.searchkey))\
            .order_by(_orderby).values('name','parentid','listorder','type','id','url','moduleid','icon')
    else:
        alldata = SysMenu.objects.order_by(_orderby).\
        values('name','parentid','listorder','type','id','url','moduleid','icon')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        pid = row['parentid']
        moduleid = row["moduleid"]
        if pid != 0 and pid != None:
            row['parentname'] = SysMenu.objects.get(id=pid).name
        else:
            row['parentname'] = '无'

        if moduleid != 0 and moduleid != None:
            row['modulename'] = SysModule.objects.get(id=moduleid).name
        else:
            row['modulename'] = '无'

        type = row['type']
        if  type != None and type != '':
            row['typename'] = MenuType(int(type)).name
        else:
            row['typename'] = '无'


    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_exempt
def get_list(request,kwargs):
    assert isinstance(request, HttpRequest)
    searchkey = request.GET.get('searchKey','')

    alldata = None
    if searchkey != '':
        alldata = SysMenu.objects.filter(Q(url__icontains=searchkey) | Q(name__icontains=searchkey))\
            .order_by('id').values('name','parentid','listorder','type','id','url')
    else:
        alldata = SysMenu.objects.order_by('id').\
        values('name','parentid','listorder','type','id','url')
    pagedata = list(alldata)

    for row in pagedata:
        type = row['type']
        pid = row['parentid']
        if pid != 0 and pid != None:
            row['parentname'] = SysMenu.objects.get(id=pid).name
        else:
            row['parentname'] = '无'
        if type != 0 and type != None:
            row['typename'] = MenuType(int(type)).name
        else:
            row['typename'] = '无'
    result = {'value':pagedata} #suggest 插件需要的数据格式
    return JsonResponse(result,safe=False)

def get_menu_type(parentid):
    if parentid == '0' or not parentid:
        return MenuType.module.value

    parentmenu = SysMenu.objects.get(id=parentid)
    parenttype = int(parentmenu.type)
    if parenttype == MenuType.module.value:
        return MenuType.menu.value
    elif parenttype == MenuType.menu.value:
        return MenuType.button.value
    elif parenttype == MenuType.button.value:
        return MenuType.button.value
    else:
        return MenuType.module.value
