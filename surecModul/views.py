from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required()
def surecModulGoster(request):
	return render(request, 'surecModul/index.tpl')