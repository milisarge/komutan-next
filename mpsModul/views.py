from django.shortcuts import render

@login_required()
def mpsModulGoster(request):
	return render(request, 'mpsModul/index.tpl')
