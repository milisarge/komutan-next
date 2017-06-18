from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required()
def mpsModulGoster(request):
	return render(request, 'mpsModul/index.tpl')
