from django.core.urlresolvers import resolve
from django.shortcuts import render,render_to_response,HttpResponse,redirect
from kingWeb.models import *
import json

#检测用户是否有访问此url权限
#前提是此url已经才 菜单表 中存在
#菜单表 中不存在的url都放过
def perm_check(*args,**kwargs):
    app = args[1]['app']
    controller = args[1]['controller']
    action = args[1]['action']
    url = "/" + app + "/" + controller + "/" + action
    #菜单表 中不存在的url都放过
    try:
        menu = SysMenu.objects.get(url=url)
    except Exception as e:
        return True
    user = args[0].user
    userroles = SysUserRole.objects.filter(user__id = user.id)
    #如果用户没有角色 直接禁止访问
    if len(userroles) < 1:
        return False
    roles = []
    for ur in userroles:
        roles.append(ur.role)

    rolemenus = SysRoleMenu.objects.filter(role__in=roles)
    #如果角色没有授权菜单 直接禁止访问
    if len(rolemenus) < 1:
        return False
    menuids = []
    for rm in rolemenus:
        menuids.append(rm.menu.id)

    user_role_menus = SysMenu.objects.filter(id__in=menuids)
    for menu in user_role_menus:
        #如果用户角色有权限的菜单包含这个url 放过
        if menu.url == url:
            return True

    return False



def check_permission(func):
    def wrapper(*args,**kwargs):
        #如果没权限
        if not perm_check(*args,**kwargs):
            request = args[0]
            if request.method == 'POST':
                result = ResultModel()
                result.flag = False
                result.msg = '无权限操作'
                return JsonResponse(result.tojson())
            else:
                return render(request,'adm/home/access_denied.html')
        return func(*args,**kwargs)
    return wrapper