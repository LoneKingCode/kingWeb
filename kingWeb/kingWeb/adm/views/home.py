"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest
from django.template import RequestContext
from datetime import datetime
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
