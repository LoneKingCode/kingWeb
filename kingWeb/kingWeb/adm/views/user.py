"""
Definition of views.
"""
from django.views.decorators.csrf import csrf_exempt
import json
from django.shortcuts import render
from django.http import HttpRequest
from django.http import HttpResponse
from django.db.models import Q
from django.template import RequestContext
from datetime import datetime
from django.contrib.auth.models import User
from django.contrib import auth
from django.contrib.auth.hashers import make_password

from django.core import serializers

from kingWeb.models import *
from kingWeb.DynamicRouter import urls


def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/index.html',
        {
            'title':'用户管理',
        })

def add(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/add.html',
        {
            'title':'添加用户',
        })

def authen(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/authen.html',
        {
            'title':'角色授权',
        })


def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    id = kwargs.get('id','')
    if id == '':
        return render(request, 'adm/user/index')
    object = User.objects.get(id=id)
    return render(request,
        'adm/user/edit.html',
        {
            'title':'编辑用户',
            'username':object.username,
            'lastname':object.last_name,
            'firstname':object.first_name,
            'email':object.email,
            'status':object.is_active,

        })



def login(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/login.html',
        {
            'title':'用户登录',
         })

@csrf_exempt
def post_login(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    if request.method == 'GET':
        result.msg = 'Method not allowed'
        return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
    user = auth.authenticate(username=request.POST.get('UserName'), password=request.POST.get('Password'))
    if user is not None:
          auth.login(request, user)
          result.data = user.username
          result.flag = True
          result.msg = '登陆成功'
    else:
        result.msg = '登陆失败'

    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_add(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    username = request.POST.get('UserName','')
    lastname = request.POST.get('LastName','')
    firstname = request.POST.get('FirstName','')
    email = request.POST.get('Email','')
    password = request.POST.get('Password','')
    #is_active = request.POST.get('Status','')

    object = User.objects.create_user(username=username,email=email,first_name=firstname,\
        last_name=lastname,password=password) #is_active=is_active)
    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    username = request.POST.get('UserName','')
    lastname = request.POST.get('LastName','')
    firstname = request.POST.get('FirstName','')
    email = request.POST.get('Email','')
    password = request.POST.get('Password','')
    oldpassword = request.POST.get('OldPassword','')
    #is_active = request.POST.get('Status','')
    user = auth.authenticate(username=username, password=oldpassword)
    if user is not None:
            user.last_name = lastname
            user.first_name = firstname
            user.email = email
          #  user.is_active = is_active
            user.set_password(password)
            user.save()
            result.msg = '操作成功'
            result.flag = True
    else:
        result.msg='旧密码错误'
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def post_delete(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)
    ids = request.POST.getlist('ids[]')
    if ids == '':
        result.msg = '操作失败'
        return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
    object = User.objects.filter(id__in=ids).delete()
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
        alldata = SysDepartment.objects.filter(name__icontains=searchkey).order_by(_orderby).\
        values('email','first_name','last_name','id','last_login','is_active','username')
    else:
        alldata = User.objects.order_by(_orderby).\
        values('email','first_name','last_name','id','last_login','is_active','username')
    pagedata = list(alldata[int(start):int(length) + int(start)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        row['realname'] = row['last_name'] + row['first_name']
        row['status'] = '激活' if row['is_active'] == 1 else '未激活'
        row['last_login'] = str(row['last_login'])
    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")


@csrf_exempt
def delete_role(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)

    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def delete_role(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)

    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def auth_role(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)

    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def get_user_role(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)

    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

@csrf_exempt
def get_not_user_role(request,kwargs):
    result = ResultModel()
    assert isinstance(request, HttpRequest)

    result.msg = '操作成功'
    result.flag = True
    return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
