from django.shortcuts import render_to_response,HttpResponse,redirect
from kingWeb.models import ResultModel
import json
def process(request,**kwargs):
    '''接收所有匹配url的请求，根据请求url中的参 数，通过反射动态指定view中的方法'''

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
        result = ResultModel()
        result.flag=False
        result.msg = '操作失败:' + str(e)
        return HttpResponse(json.dumps(result.tojson()), content_type="application/json")

        #导入失败时，自定义404错误
        #return HttpResponse('404 Not Found')
    except Exception as e:
        result = ResultModel()
        result.flag=False
        result.msg = '操作失败:' + str(e)
        return HttpResponse(json.dumps(result.tojson()), content_type="application/json")
        #代码执行异常时，自动跳转到指定页面
        #return redirect('/adm/home/index')

