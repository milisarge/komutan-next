from django.shortcuts import render

@login_required()
def surecModulGoster(request):
	return render(request, 'surecModul/index.tpl')