class webhelper(object):
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
    def get_client_agent(request):
        agent = request.META.get('HTTP_USER_AGENT',None)
        return agent


