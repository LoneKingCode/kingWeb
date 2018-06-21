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
from django.core import serializers

from kingWeb.models import *
from kingWeb.DynamicRouter import urls


def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/index.html',
        {
            'title':'用户列表',
    })

def edit(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/user/edit.html',
        {
            'title':'编辑用户',
            'id':kwargs.get('id',None),
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
def get_page_data(request,kwargs):
    assert isinstance(request, HttpRequest)
    start = request.POST.get('start')
    length = request.POST.get('length')
    searchkey = request.POST.get('searchkey')
    draw = request.POST.get('draw')
    value = request.POST.get('value')
    alldata = User.objects.all()
    pagedata = serializers.serialize("json", alldata[int(start):int(length)])
    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)
    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")



