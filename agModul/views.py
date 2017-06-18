from django.shortcuts import render

@login_required()
def agModulGoster(request):
	return render(request, 'agModul/index.tpl')