from django.template import RequestContext
from django.views.decorators.csrf import csrf_protect
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
import json
from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from kingWeb.apps.adm.forms import *
from kingWeb.apps.adm.permission import check_permission
from kingWeb.util.WebHelper import WebHelper
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
    parentid = kwargs.get('id','0')
    departments = SysDepartment.objects.values('id','name')
    return render(request,
        'adm/department/add.html',
        {
            'title':'添加部门',
            'departments':departments,
            'parentid':int(parentid),
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

@csrf_protect
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    modelform = SysDepartmentForm(request.POST).save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_protect
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    id = request.POST.get('id','')
    obj = SysDepartment.objects.get(id=id)
    modelform = SysDepartmentForm(WebHelper.get_post_dic(request.POST),instance=obj).save()
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
        alldata = SysDepartment.objects.filter(Q(description__icontains=page.searchkey) | Q(name__icontains=page.searchkey)).order_by(_orderby).\
        values('name','parentid','leader','description','id')
    else:
        alldata = SysDepartment.objects.order_by(_orderby).\
        values('name','parentid','leader','description','id')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        pid = row['parentid']
        if pid != 0 and pid != None:
            row['parentname'] = SysDepartment.objects.get(id=pid).name
        else:
            row['parentname'] = '无'

    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_protect
def get_list(request,kwargs):
    assert isinstance(request,HttpRequest)
    departments = SysDepartment.objects.values('id','name')
    result = []
    for row in departments:
            result.append({'pId':'0','name': row['name'] ,'id':str(row['id'])})
    return JsonResponse(result,safe=False)
