"""
Çekirdek URL Yapılandırması
"""
from django.conf.urls import url
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    url(r'^giris/$', auth_views.login, {'template_name': 'giris.tpl'}, name='Giriş'),
    url(r'^cikis/$', auth_views.logout, {'template_name': 'cikis.tpl'}, name='Çıkış'),
    url(r'^$', views.sistemBilgiGoster),
    url(r'^style.css$', views.dinamikCSS),
]    