from django.contrib import admin
from .models import Baglanti,Tema

# SSH Bağlantı ayarları arayüz kaydı
admin.site.register(Baglanti)
# Görünüm ayarları arayüz kaydı 
admin.site.register(Tema)