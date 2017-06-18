from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required()
def servisModulGoster(request):
	return render(request, 'servisModul/index.tpl')

