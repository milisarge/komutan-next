import git
from django.shortcuts import render
from django.http import HttpResponse

def guncellemeGoster(request):
	repo = git.Repo('.')
	sha = repo.git.rev_parse(repo.head.object.hexsha, short=7)
	versiyon = "1.0"
	return render(request, 'komutanGuncelle/index.tpl', { 'sha':sha, 'versiyon':versiyon })

def sistemGuncelle(request):
	repo = git.Repo('.')
	try:
		repo.remotes.origin.pull()
	except:
		return HttpResponse("Güncelleme Başarısız.")
	return HttpResponse("Güncelleme Başarılı !")