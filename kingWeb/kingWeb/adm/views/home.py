"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest
from django.template import RequestContext

from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from django.contrib.auth.models import User
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/home/index.html',
        {
            'title':'Home Page',
        })
def home(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/home/index.html',
        {
            'title':'Home Page',
        })
def notfound(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/home/notfound.html',
        {
            'title':'页面不存在',
        })
def error(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/home/error.html',
        {
            'title':'出错了',
        })
def access_denied(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/home/access_denied.html',
        {
            'title':'无权限访问',
        })
