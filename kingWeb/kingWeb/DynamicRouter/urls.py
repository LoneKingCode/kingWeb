from django.conf.urls import url,include
import django.contrib.auth.views
from kingWeb.DynamicRouter.activator import process

urlpatterns = [
    # url(r'^adm/', include('kingWeb.adm.urls'))
    #url(r'^admin/', include(admin.site.urls)),
       url('^(?P<app>(\w+))/(?P<controller>(\w+))/(?P<action>(\w+))/(?P<id>(\d+))/$',process),
          url('^(?P<app>(\w+))/(?P<controller>(\w+))/(?P<action>(\w+))/$',process),
             url('^(?P<app>(\w+))/(?P<controller>(\w+))/$',process,{'action':'index'}), #控制器默认首页 index
                url('^(?P<app>(\w+))/$',process,{'controller':'home','action':'index'}), #默认首页/adm/home/index
   ]
