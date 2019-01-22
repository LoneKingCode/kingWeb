"""
Definition of views.
"""
from django.views.decorators.csrf import csrf_exempt
import json
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse,HttpRequest
from django.db.models import Q
from django.template import RequestContext
from datetime import datetime
from django.contrib.auth.models import User
from django.contrib import auth
from django.contrib.auth.hashers import make_password
from django.core import serializers

from kingWeb.models import *
from kingWeb.DynamicRouter import urls
from kingWeb.apps.adm.permission import check_permission
from kingWeb.util.WebHelper import *

def logout(request,kwargs):
    assert isinstance(request, HttpRequest)
    auth.logout(request)
    return render(request,
        'adm/user/login.html',
        {
            'title':'用户登陆',
        })

@check_permission
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/index.html',
        {
            'title':'用户管理',
        })
@check_permission
def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    statuslist = []
    for s in UserStatus:
        statuslist.append(s)
    return render(request,
        'adm/user/add.html',
        {
            'title':'添加用户',
            'statuslist':statuslist
        })
@check_permission
def authen(request,kwargs):
    assert isinstance(request, HttpRequest)
    userid = kwargs.get('id','')
    user = User.objects.get(id=userid)
    return render(request,
        'adm/user/authen.html',
        {
            'title':'角色授权',
            'userid':userid,
            'personname':user.username
        })
@check_permission
def department(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/department.html',
        {
            'title':'用户部门',
        })

@check_permission
def select_user(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/select_user.html',
        {
            'title':'选择用户',
            'departmentid':kwargs.get('id','')
        })


@check_permission
def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    allow_modify_status = 1
    if not id:
       id = request.user.id
       allow_modify_status = 0 #如果是从后台 访问的修改信息，是修改自身信息，不允许修改账户状态
    object = SysUserProfile.objects.filter(user__id=id)\
        .values('status','user__email','personname',\
        'user__id','user__last_login','user__username').first()
    statuslist = []
    for s in UserStatus:
        statuslist.append(s)
    return render(request,
        'adm/user/edit.html',
        {
            'title':'编辑用户',
            'id':object['user__id'],
            'username':object['user__username'],
            'personname':object['personname'],
            'email':object['user__email'],
            'status':object['status'],
            'statuslist':statuslist,
            'allow_modify_status':allow_modify_status,
        })

@check_permission
def modifyinfo(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = request.user.id
    allow_modify_status = 0 #不允许修改账户状态
    object = SysUserProfile.objects.filter(user__id=id)\
        .values('status','user__email','personname',\
        'user__id','user__last_login','user__username').first()
    statuslist = []
    for s in UserStatus:
        statuslist.append(s)
    return render(request,
        'adm/user/modifyinfo.html',
        {
            'title':'编辑信息',
            'id':object['user__id'],
            'username':object['user__username'],
            'personname':object['personname'],
            'email':object['user__email'],
            'status':object['status'],
            'statuslist':statuslist,
            'allow_modify_status':allow_modify_status,
        })


def login(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/login.html',
        {
            'title':'用户登录',
            'next':request.GET.get('next','')
         })

@csrf_exempt
def post_login(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    username = request.POST.get('UserName')
    pwd = request.POST.get('Password')
    if request.method == 'GET':
        result.msg = 'Method not allowed'
        return JsonResponse(result.tojson())
    user = auth.authenticate(username=username, password=pwd)
    if user is not None:
          userprofile = SysUserProfile.objects.get(user=user)
          if userprofile.status == UserStatus.active.value:
                auth.login(request, user)
                result.data = user.username
                result.flag = True
                result.msg = '登陆成功'
          else:
                result.data = user.username
                result.msg = '登陆失败:用户状态为' + UserStatus(userprofile.status).name
    else:
        result.msg = '登陆失败'

    ip = WebHelper.get_client_ip(request)
    agent = WebHelper.get_client_agent(request)
    SysLoginlog.objects.create(clientip=ip,clientinfo = agent,username=username,description=result.msg)

    return JsonResponse(result.tojson())

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    username = request.POST.get('UserName','')
    email = request.POST.get('Email','')
    password = request.POST.get('Password','')
    personname = request.POST.get('PersonName','')
    status = request.POST.get('Status','')

    user = User.objects.create_user(username=username,email=email,password=password) #is_active=is_active)
    user_profile = SysUserProfile.objects.get(user=user)
    user_profile.status = status
    user_profile.personname = personname
    user_profile.save()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
def post_register(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    username = request.POST.get('UserName')
    pwd = request.POST.get('Password')
    email = request.POST.get('Email')
    reg_user = User.objects.create_user(username=username,email=email,password=pwd)
    user_profile = SysUserProfile.objects.get(user=reg_user)
    user_profile.status = '1'
    user_profile.save()
    role = SysRole.objects.get(id=5) #获取 "用户" 角色
    user_role = SysUserRole.objects.create(role=role,user=reg_user)
    result.msg = '操作成功'
    result.flag=True
    return JsonResponse(result.tojson())


@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    username = request.POST.get('UserName','')
    personname = request.POST.get('PersonName','')
    email = request.POST.get('Email','')
    password = request.POST.get('Password','')
    status = request.POST.get('Status','')
    id = request.POST.get('Id','')
    user = User.objects.get(id=id)
    if user is not None:

        #密码可以为空 就不修改密码了
        if password != '':
            user.set_password(password)
        user.save()
        #执行过user.save()时 对应的SysUserProfile对象已经建立
        user_profile = SysUserProfile.objects.get(user=user)
        user_profile.personname = personname
        user_profile.save()
        result.msg = '操作成功'
        result.flag = True
    else:
        result.msg = '用户Id不存在'
    return JsonResponse(result.tojson())

@csrf_exempt
def post_modify_info(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    username = request.user.username
    personname = request.POST.get('PersonName','')
    email = request.POST.get('Email','')
    password = request.POST.get('Password','')
    oldpassword = request.POST.get('OldPassword','')
    user = auth.authenticate(username=username, password=oldpassword)
    if user is not None:
        #密码可以为空 就不修改密码了
        if password != '':
            user.set_password(password)
        user.save()
        user_profile = SysUserProfile.objects.get(user=user)
        user_profile.personname = personname
        user_profile.save()
        result.msg = '操作成功'
        result.flag = True
    else:
        result.msg = '旧密码错误'
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
    object = User.objects.filter(id__in=ids).delete()
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
        alldata = SysUserProfile.objects.filter(Q(personname__icontains=page.searchkey) | Q(user__username__icontains=page.searchkey)).order_by(_orderby)\
        .values('status','user__email','personname','user__id','user__last_login','user__username')
    else:
        alldata = SysUserProfile.objects.order_by(_orderby)\
        .values('status','user__email','personname','user__id','user__last_login','user__username')
    pagedata = list(alldata[int(page.start):int(page.length) + int(page.start)])

    rownum = int(page.start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['status'] = UserStatus(int(row['status'])).name
        row['user__last_login'] = str(row['user__last_login'])
    datatable = DataTableModel(page.draw,alldata.count(),alldata.count(),pagedata)

    return JsonResponse(datatable.tojson())

@csrf_exempt
def delete_role(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    userid = request.POST.get('UserId','')
    roleids = request.POST.getlist('RoleIds[]','')
    objects = SysUserRole.objects.filter(Q(role__id__in=roleids) & Q(user__id=userid)).delete()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
def auth_role(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    userid = request.POST.get('UserId','')
    roleids = request.POST.getlist('RoleIds[]','')
    user_role = []
    roles = SysRole.objects.filter(id__in = roleids)
    user = User.objects.get(id=userid)
    for role in roles:
        user_role.append(SysUserRole(user=user,role=role))
    if len(user_role) > 0:
        objects = SysUserRole.objects.bulk_create(user_role)
        result.msg = '操作成功'
        result.flag = True
    else:
        result.msg = '操作失败'
    return JsonResponse(result.tojson())

@csrf_exempt
def get_user_role(request,kwargs):
    assert isinstance(request, HttpRequest)
    userid = kwargs.get('id','')
    draw = request.POST.get('draw','')
    if not userid:
        return JsonResponse({'msg':'请求参数错误'})
    user_role_data = SysUserRole.objects.filter(user__id=userid).values('role__id')
    role_data = SysRole.objects.filter(id__in = user_role_data).values('id','name')

    datatable = DataTableModel(draw,role_data.count(),role_data.count(),list(role_data))

    return JsonResponse(datatable.tojson())

@csrf_exempt
def get_not_user_role(request,kwargs):
    assert isinstance(request, HttpRequest)
    userid = kwargs.get('id','')
    draw = request.POST.get('draw','')
    if not userid:
        return JsonResponse({'msg':'请求参数错误'})
    user_role_data = SysUserRole.objects.filter(user__id=userid).values('role__id')
    role_data = SysRole.objects.exclude(id__in = user_role_data).values('id','name')

    datatable = DataTableModel(draw,role_data.count(),role_data.count(),list(role_data))

    return JsonResponse(datatable.tojson())

@csrf_exempt
def get_not_department_user(request,kwargs):
    assert isinstance(request, HttpRequest)
    start = request.POST.get('start','0')
    length = request.POST.get('length','0')
    orderby = request.POST.get('orderBy','')
    orderdir = request.POST.get('orderDir','')
    draw = request.POST.get('draw','')
    departmentid = request.POST.get('value','')
    _orderby = ''
    if orderdir == 'desc':
        _orderby = '-'
    if orderby != '':
        _orderby +=orderby
    else:
        _orderby +='id'

    if not departmentid:
        return JsonResponse({'msg':'请求参数错误'})
    user_department = SysUserDepartment.objects.filter(department__id=departmentid).values('user__id')
    users = SysUserProfile.objects.exclude(user__id__in=user_department).order_by(_orderby)\
        .values('status','user__email','personname','user__id','user__username')
    pagedata = list(users[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['status'] = UserStatus(int(row['status'])).name

    datatable = DataTableModel(draw,users.count(),users.count(),list(pagedata))

    return JsonResponse(datatable.tojson())


@csrf_exempt
def get_department_user(request,kwargs):
    assert isinstance(request, HttpRequest)
    start = request.POST.get('start','0')
    length = request.POST.get('length','0')
    orderby = request.POST.get('orderBy','')
    orderdir = request.POST.get('orderDir','')
    draw = request.POST.get('draw','')
    departmentid = request.POST.get('value','')
    _orderby = ''
    if orderdir == 'desc':
        _orderby = '-'
    if orderby != '':
        _orderby +=orderby
    else:
        _orderby +='id'

    if not departmentid:
        return JsonResponse({'msg':'请求参数错误'})

    user_department = SysUserDepartment.objects.filter(department__id=int(departmentid)).values('user__id')
    users = SysUserProfile.objects.filter(user__id__in=user_department).order_by(_orderby)\
        .values('status','personname','user__email','user__id','user__username','id')
    pagedata = list(users[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['status'] = UserStatus(int(row['status'])).name

    datatable = DataTableModel(draw,users.count(),users.count(),list(pagedata))

    return JsonResponse(datatable.tojson())

@csrf_exempt
@check_permission
def remove_department_user(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    departmentid = request.POST.get('DepartmentId','')
    userids = request.POST.getlist('UserIDs[]','')
    objects = SysUserDepartment.objects.filter(Q(department__id = departmentid) & Q(user__id__in=userids)).delete()
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())

@csrf_exempt
@check_permission
def set_user_department(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    departmentid = request.POST.get('DepartmentId','')
    userids = request.POST.getlist('UserIDs[]','')
    newobjects = []
    users = User.objects.filter(id__in=userids)
    department = SysDepartment.objects.get(id=departmentid)
    for user in users:
        newobjects.append(SysUserDepartment(user=user,department=department))
    if len(newobjects) > 0:
        SysUserDepartment.objects.bulk_create(newobjects)
        result.msg = '操作成功'
        result.flag = True
    return JsonResponse(result.tojson())
