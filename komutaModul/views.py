import os
from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from cekirdek.models import Baglanti
from fabric.api import *



@login_required()
def komutaModulGoster(request):
	betikler = os.listdir(os.curdir + '/komutaModul/betikler/')
	return render(request, 'komutaModul/index.tpl', {"betikler":betikler})

@login_required()
def betikCalistir(request):
	if(request.method=='POST'):
		betik = request.POST['betik']
		sudo = request.POST['sudo']
		if betik:
			env.host_string = Baglanti.objects.all()[0].sunucu
			env.user = Baglanti.objects.all()[0].kullanici
			env.password = Baglanti.objects.all()[0].sifre
			with hide('output','running'), cd('/tmp'):
				betikYol = os.getcwd() + '/komutaModul/betikler/' + betik
				put(betikYol,'/tmp')
				if sudo == "0":
					cikti = run("bash " + betik)
					#cikti = "sh " + betik
					run("rm " + betik)
				else:
					# 'str' object is not callable hatası veriyor. Çözülmesi gerek.
					#sudo('bash ' + betik, user="root")
					cikti = "sudo bash" + betik
					run("rm " + betik)


			return HttpResponse(cikti,'text/plain; charset=utf-8')
	else:
		return HttpResponse("Bu fonksiyon sadece POST methodu ile çalışır.",'text/plain; charset=utf-8')		
