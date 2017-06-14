from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required()
def komutaModulGoster(request):
    return render(request, 'komutaModul/index.tpl')
