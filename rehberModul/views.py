from django.shortcuts import render

def rehberGoster(request):
	return render(request, 'rehberModul/index.tpl')