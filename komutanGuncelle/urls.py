"""
komutanGuncelle URL Yapılandırması
"""
from django.conf.urls import url
from . import views
urlpatterns = [
    url(r'^$', views.guncellemeGoster),
    url(r'^guncelle/$', views.guncelle),
]