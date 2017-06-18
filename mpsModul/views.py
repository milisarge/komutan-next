from django.shortcuts import render

def mpsModulGoster(request):
	return render(request, 'mpsModul/index.tpl')
