from datetime import datetime
from django.conf.urls import url
import django.contrib.auth.views
import kingWeb.adm.forms as king_form

from kingWeb.adm.views import home
from kingWeb.adm.views import control
from kingWeb.adm.views import user

urlpatterns = [
    #url(r'^$',home.index, name='home'),
    #url(r'^control$',control.index, name='control_default'),
    #url(r'^control/index',control.index, name='control_index'),
    #url(r'^control/welcome',control.welcome, name='control_welcome'),
    #url(r'^user/edit/(?P<id>[0-9]+)/$',user.edit,name="user_edit"),



    # url(r'^login/$',
    #    django.contrib.auth.views.login,
    #    {
    #        'template_name': 'adm/user/login.html',
    #        'authentication_form': king_form.BootstrapAuthenticationForm,
    #        'extra_context':
    #        {
    #            'title': 'Log in',
    #            'year': datetime.now().year,
    #        }
    #    },
    #    name='login'),
    #url(r'^logout$',
    #    django.contrib.auth.views.logout,
    #    {
    #        'next_page': '/',
    #    },
    #    name='logout'),
]

