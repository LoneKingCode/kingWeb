"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest
from django.template import RequestContext
from datetime import datetime

def index(request):
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'adm/user/index.html',
        {
            'title':'用户列表',
            'year':datetime.now().year,
        }
    )

def edit(request,id):
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'adm/user/edit.html',
        {
            'title':'编辑用户',
        }
    )
