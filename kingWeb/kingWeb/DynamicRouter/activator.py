from django.shortcuts import render_to_response,HttpResponse,redirect

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

    except(ImportError,AttributeError) as e:
        #导入失败时，自定义404错误
        return HttpResponse('404 Not Found')
    except Exception as e:
        #代码执行异常时，自动跳转到指定页面
         return redirect('/adm/home/index')

    return result
