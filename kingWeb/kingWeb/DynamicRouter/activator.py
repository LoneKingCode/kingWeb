from django.shortcuts import render_to_response,HttpResponse,redirect
from kingWeb.models import ResultModel
import json
def process(request,**kwargs):
    '''接收所有匹配url的请求，根据请求url中的参数，通过反射动态指定view中的方法'''

    app = kwargs.get('app',None)
    controller = kwargs.get('controller',None)
    action = kwargs.get('action',None)
    try:
        viewObj = __import__("%s.%s.views" % ('kingWeb',app),fromlist=(controller,))
        ctrlObj = getattr(viewObj, controller)
        actionObj = getattr(ctrlObj, action)
        #执行view.py中的函数，并获取其返回值
        result = actionObj(request,kwargs)
        return result
    except(ImportError,AttributeError) as e:
        if request.method=='POST':
            result = ResultModel()
            result.flag=False
            result.msg = '操作失败:' + str(e)
            return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
        else:
           return redirect('/adm/home/notfound')
    except Exception as e:
        if request.method=='POST':
            result = ResultModel()
            result.flag=False
            result.msg = '操作失败:' + str(e)
            return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
        else:
            return redirect('/adm/home/error')

