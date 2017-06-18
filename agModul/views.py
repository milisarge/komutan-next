from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required()
def agModulGoster(request):
	return render(request, 'agModul/index.tpl')