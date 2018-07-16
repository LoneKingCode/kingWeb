"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest
from django.template import RequestContext
from datetime import datetime
from kingWeb.DynamicRouter import urls
from kingWeb.adm.permission import check_permission

def index(request,kwargs):
    assert isinstance(request, HttpRequest)

    return render(request,
        'adm/control/index.html',
        {
            'username':request.user.username

        })


def welcome(request,kwargs):
    """Renders the about page."""
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/control/welcome.html',
        {
            'title':'欢迎欢迎',
         })
