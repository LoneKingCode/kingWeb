"""
Definition of views.
"""
import json
from django.shortcuts import render
from django.http import HttpRequest,JsonResponse
from django.template import RequestContext
from django.views.decorators.csrf import csrf_protect
from datetime import datetime
from django.contrib.auth.decorators import login_required
from kingWeb.DynamicRouter import urls
from kingWeb.apps.adm.permission import check_permission
from kingWeb.models import *
from django.db.models import Q
from kingWeb.util.ServerInfoHelper import ServerInfoHelper

@login_required
def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    userid = request.user.id
    result = render(request,
             'adm/control/index.html',
             {
                    'username':request.user.username,
              })
    if not userid:
         return result

    userroles = SysUserRole.objects.filter(user__id=userid)
    if len(userroles) < 1:
        return result
    roles = []
    for ur in userroles:
        roles.append(ur.role)
    rolemenus = SysRoleMenu.objects.filter(role__in=roles)
    if len(rolemenus) < 1:
        return result
    menuids = []
    for rm in rolemenus:
        menuids.append(rm.menu.id)

    menus = SysMenu.objects.filter(Q(id__in=menuids) & Q(type = MenuType.menu.value))
    modules = SysMenu.objects.filter(Q(id__in=menuids) & Q(type = MenuType.module.value))

    return render(request,
        'adm/control/index.html',
        {
            'username':request.user.username,
            'menus':menus,
            'modules':modules,
        })


def welcome(request,kwargs):
    """Renders the about page."""
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/control/welcome.html',
        {
            'title':'欢迎欢迎',
         })
@csrf_protect
def getserverinfo(request,kwargs):
    assert isinstance(request, HttpRequest)
    result = ResultModel()
    result.data = json.dumps(ServerInfoHelper.get_info(request),default=lambda \
    o:o.__dict__,sort_keys=True)
    result.msg = '操作成功'
    result.flag = True
    return JsonResponse(result.tojson())