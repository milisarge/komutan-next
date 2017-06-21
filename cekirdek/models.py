from django.db import models
from django.conf import settings
from django.core.exceptions import ValidationError


# Sadece tek kayıta izin ver
def tek_kayit(obj):
    model = obj.__class__
    if (model.objects.count() > 0 and
            obj.id != model.objects.get().id):
        raise ValidationError("%s için sadece bir kayıt ekleyebilirsiniz." % model.__name__)

# SSH Bağlantı ayarları
class Baglanti(models.Model):
    sunucu = models.CharField(max_length=50, default="localhost", verbose_name='SSH Sunucu Adresi')
    kullanici = models.CharField(max_length=32, verbose_name='Kullanıcı', help_text="Buraya Komutan kullanıcı adınızı değil sistem kullanıcı adınızı giriniz. ")
    
    # Yapılacaklar:
    # 1.Bu kısma yıldızlı şifre şeysi koyulacak.
    # 2.SSH Key desteği eklenecek.

    sifre = models.CharField(max_length=40, verbose_name='Şifre')
    
    # İsimlendirme Bilgileri
    class Meta:
	    db_table = "Baglanti"
	    verbose_name = "SSH Bağlantı Ayarı"
	    verbose_name_plural = "SSH Bağlantı Ayarları"

	# Kayıtlar listelenirken hangi alan kullanılacak
    def __str__(self):
        return self.sunucu

    def clean(self):
        tek_kayit(self)


# Komutan Arayüzü Arkaplan Ayarı
class Tema(models.Model):
	arkaplan = models.FilePathField(path=settings.BASE_DIR+'/static/img/artalanlar', match=".*\.png$", recursive=True, default="mavi.png", verbose_name='Arayüz arkaplan resmi')
	koyuYazı = models.BooleanField(verbose_name='Koyu renk yazı kullanılsın')

    # İsimlendirme Bilgileri
	class Meta:
		db_table = "Tema"
		verbose_name = "Görünüm Ayarı"
		verbose_name_plural = "Görünüm Ayarları"

	# Kayıtlar listelenirken hangi alan kullanılacak
	def __str__(self):
		return "Varsayılan Görünüm"

	def clean(self):
		tek_kayit(self)