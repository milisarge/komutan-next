from django.contrib import admin

from .models import Parametreler, Betikler

admin.site.register(Betikler)
admin.site.register(Parametreler)