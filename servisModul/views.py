from django.shortcuts import render

def servisModulGoster(request):
	return render(request, 'servisModul/index.tpl')

