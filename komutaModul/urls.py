"""
Komuta Merkezi URL Yapılandırması
"""
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.komutaModulGoster),
]    