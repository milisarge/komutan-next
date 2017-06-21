from django.db import models


class Betikler(models.Model):
	betik = models.CharField(max_length=50, default="", verbose_name='Betiğin Dosya Adı')

	class Meta:
		db_table = "Betikler"
		verbose_name = "Betik"
		verbose_name_plural = "Betikler"

	def __str__(self):
		return self.betik

class Parametreler(models.Model):
	parametre = models.CharField(max_length=12, default="", verbose_name='Betiğin aldığı parametre')
	parametreBaslik = models.CharField(max_length=50, default="", editable=False)
	deger = models.CharField(max_length=50, default="", verbose_name='Parametrenin aldığı varsayılan değer')
	betik = models.ForeignKey(Betikler, on_delete=models.CASCADE)

	def __str__(self):
		return "{} - {}".format(self.betik, self.parametreBaslik)

	class Meta:
		ordering = ('parametre',)
		db_table = "BetikParametreler"
		verbose_name = "Parametre"
		verbose_name_plural = "Parametreler"

class GitDepo(models.Model):
	depoAdresi = models.URLField(verbose_name='Git Depo Adresi')

	class Meta:
		db_table = "BetikDepo"
		verbose_name = "Git Depo Ayarı"
		verbose_name_plural = "Git Depo Ayarları"

	def __str__(self):
		return depoAdresi