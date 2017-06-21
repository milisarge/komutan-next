from django.contrib import admin

from .models import Parametreler, Betikler, GitDepo

# Betik parametre ayarları arayüz kaydı
admin.site.register(Betikler)
admin.site.register(Parametreler)

# Git depo ayarları arayüz kaydı
admin.site.register(GitDepo)