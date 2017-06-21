from django.db import models


class Betikler(models.Model):
	betik = models.CharField(max_length=50,default="")

	class Meta:
		db_table = "Betikler"
		verbose_name = "Betik"
		verbose_name_plural = "Betikler"

	def __str__(self):
		return self.betik

class Parametreler(models.Model):
	parametre = models.CharField(max_length=12,default="")
	parametreBaslik = models.CharField(max_length=50,default="")
	deger = models.CharField(max_length=50,default="")
	betik = models.ForeignKey(Betikler, on_delete=models.CASCADE)

	def __str__(self):
		return "{} - {}".format(self.betik, self.parametreBaslik)

	class Meta:
		ordering = ('parametre',)
		db_table = "BetikParametreler"
		verbose_name = "Parametre"
		verbose_name_plural = "Parametreler"
