from django.shortcuts import render

@login_required()
def servisModulGoster(request):
	return render(request, 'servisModul/index.tpl')

