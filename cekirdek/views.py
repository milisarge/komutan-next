from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required()
def menuGoster(request):
    return render(request, 'menu.tpl')
