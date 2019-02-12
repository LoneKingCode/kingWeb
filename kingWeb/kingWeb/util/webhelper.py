from django.http import QueryDict
import time

class WebHelper(object):
    @staticmethod
    def get_client_ip(request):
        try:
            real_ip = request.META['HTTP_X_FORWARDED_FOR']
            regip = real_ip.split(",")[0]
        except:
            try:
                regip = request.META['REMOTE_ADDR']
            except:
                regip = ""
        return regip
    @staticmethod
    def get_client_agent(request):
        agent = request.META.get('HTTP_USER_AGENT',None)
        return agent

    @staticmethod
    def get_post_dic(request_post):
        #可以在验证下每个参数值是否合法
        postdic = QueryDict.copy(request_post)
        postdic['modifydatetime'] = time.strftime("%Y-%m-%d %H:%M:%S")
        return postdic