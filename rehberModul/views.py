from django.shortcuts import render

@login_required()
def rehberGoster(request):
	return render(request, 'rehberModul/index.tpl')