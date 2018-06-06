"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest
from django.template import RequestContext
from datetime import datetime
from kingWeb.adm import urls
def index(request):
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'adm/home/index.html',
        {
            'title':'Home Page',
        }
    )
def home(request):
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'adm/home/index.html',
        {
            'title':'Home Page',
        }
    )
