"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest
from django.template import RequestContext
from datetime import datetime
from kingWeb import urls

def index(request):
    """Renders the home page."""
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/control/index.html',
        {
            'title':'index',

        })


def welcome(request):
    """Renders the about page."""
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/control/welcome.html',
        {
            'title':'欢迎欢迎',
         })
