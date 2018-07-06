"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest,FileResponse
from django.utils.encoding import escape_uri_path
from django.template import RequestContext
from codecs import open
import os
from kingWeb.DynamicRouter import urls
from kingWeb.models import *

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

def download(request,kwargs):
    fileurl = request.GET['fileurl']
    filename = os.path.split(fileurl)[1]
    file = open('kingWeb' +fileurl,'rb')
    response = FileResponse(file)
    response['Content-Type'] = 'application/octet-stream'
    response['Content-Disposition'] = "attachment; filename*=utf-8''{}".format(escape_uri_path(filename))
    return response

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
