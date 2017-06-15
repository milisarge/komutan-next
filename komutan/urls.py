"""komutan URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin
from django.contrib.auth import views as auth_views
from cekirdek.views import dinamikCSS, menuGoster
from komutaModul.views import komutaModulGoster
from komutanGuncelle.views import guncellemeGoster,sistemGuncelle

urlpatterns = [
	url(r'^$',menuGoster, name="Menü"),
	url(r'^giris/$', auth_views.login, {'template_name': 'giris.tpl'}, name='Giriş'),
    url(r'^cikis/$', auth_views.logout, {'template_name': 'cikis.tpl'}, name='Çıkış'),
	url(r'^ayarlar/', include(admin.site.urls)),
    url(r'^style.css$',dinamikCSS, name="Tema"),
    url(r'^komutaModul/$',komutaModulGoster, name="Komuta Modülü"),
    url(r'^komutanGuncelle/$',guncellemeGoster, name="Güncelleme Modülü"),
    url(r'^guncelle/$',sistemGuncelle, name="Güncelleme Apisi"),
]

# Admin Paneli isimlendirmeleri
admin.site.site_header = 'Komutan Ayarları'
admin.site.index_title =  'Ayarlar'
admin.site.site_title =  'Komutan Ayarları'