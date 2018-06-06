"""
Definition of urls for kingWeb.
"""


from django.conf.urls import url,include
from kingWeb  import adm
import django.contrib.auth.views


 # Uncomment the next lines to enable the admin:
# from django.conf.urls import include
# from django.contrib import admin
# admin.autodiscover()
#
urlpatterns = [# Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    #url(r'^adm/', adm.urls),
    url(r'^adm/', include('kingWeb.adm.urls'))
    ]
