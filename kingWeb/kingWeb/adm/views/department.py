"""
Definition of views.
"""
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
import json
from django.http import HttpResponse
from django.http import HttpRequest
from django.template import RequestContext
from django.core import serializers

from kingWeb.DynamicRouter import urls
from kingWeb.models import *
from django.contrib.auth.models import User

def index(request,kwargs):
    assert isinstance(request, HttpRequest)
    return render(request,
        'adm/department/index.html',
        {
            'title':'部门管理',
        })

@csrf_exempt
def get_page_data(request,kwargs):
    assert isinstance(request, HttpRequest)
    start = request.POST.get('start','0')
    length = request.POST.get('length','0')
    searchkey = request.POST.get('searchkey','')
    draw = request.POST.get('draw','')
    value = request.POST.get('value','')

    alldata = SysDepartment.objects.values('name','parentid','leader','description','id')
    pagedata = list(alldata[int(start):int(length)])

    rownum = int(start)
    for row in pagedata:
        rownum = rownum + 1
        row['rownum'] = rownum
        pid = row['parentid']
        if pid != 0 and pid != None:
            row['parentname'] = SysDepartment.objects.get(id=pid).name
        else:
            row['parentname'] = '无'

    datatable = DataTableModel(draw,alldata.count(),alldata.count(),pagedata)

    return HttpResponse(json.dumps(datatable.tojson()), content_type="application/json")

