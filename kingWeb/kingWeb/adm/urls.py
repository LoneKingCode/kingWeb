from datetime import datetime
from django.conf.urls import url
import django.contrib.auth.views
import kingWeb.adm.forms as king_form

from kingWeb.adm.views import home
from kingWeb.adm.views import control
urlpatterns = [
    url(r'^$',home.index, name='home'),
    url(r'^control/welcome',control.welcome, name='control'),




     url(r'^login/$',
        django.contrib.auth.views.login,
        {
            'template_name': 'adm/user/login.html',
            'authentication_form': king_form.BootstrapAuthenticationForm,
            'extra_context':
            {
                'title': 'Log in',
                'year': datetime.now().year,
            }
        },
        name='login'),
    url(r'^logout$',
        django.contrib.auth.views.logout,
        {
            'next_page': '/',
        },
        name='logout'),]

