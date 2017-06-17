"""
Komutan URL Yapılandırması

Burası modüllere ait URL yapılandırmalarının 
eklendiği yerdir. Her modülün kendine ait 
bir ana URLsi vardır ve modüllere ait diğer
URL'ler bu URL adresine eklenir. Modül adları ve
URL adresleri camelCase yapısına uygun isimlendirilmeli
ve Türkçe karakter içermemelidir. 

Örneğin Benim Modülüm adlı bir modül için modül adı 
benimModulum ve ana URL yapısı r'^benimModulum/' 
şeklinde olmalıdır. Benim Modülüm modülünün 
alt sayfası olan Merhaba Dünya sayfasının URL 
adresi  /benimModulum/merhabaDunya şeklinde olacaktır.

Yeni modül yaratılmaya gerek olmayan çekirdek fonksiyonlar 
cekirdek adlı modüle eklenmelidir. Bu modülün URL yapılandırma
dosyasına eklenen yapılandırmalar kök URL ye eklenir. 
Örneğin; /giris, /cikis, /ayarlar, /style.css
"""

from django.conf.urls import include, url
from django.contrib import admin
from cekirdek import urls as komutanCekirdek
from komutanGuncelle import urls as komutanGuncelle
# from komutaModul import urls as komutaModul
# from rehberModul import urls as rehberModul
# from mpsModul import urls as mpsModul
# from surecModul import urls as surecModul
# from servisModul import urls as servisModul
# from agModul import urls as agModul

# Admin Paneli isimlendirmeleri
admin.site.site_header = 'Komutan Ayarları'
admin.site.index_title =  'Ayarlar'
admin.site.site_title =  'Komutan Ayarları'

# URL Yapılandırması
urlpatterns = [
    url(r'^', include(komutanCekirdek)),
    url(r'^ayarlar/', include(admin.site.urls)),
    url(r'^komutanGuncelle/', include(komutanGuncelle)),
#     url(r'^komutaModul/', include(komutaModul)),
#     url(r'^rehberModul/', include(komutaModul)),
#     url(r'^rehberModul/', include(komutaModul)),
#     url(r'^mpsModul/', include(mpsModul)),
#     url(r'^surecModul/', include(surecModul)),
#     url(r'^servisModul/', include(servisModul)),
#     url(r'^agModul/', include(agModul)),
]