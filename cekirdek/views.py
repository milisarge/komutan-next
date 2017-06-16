from django.shortcuts import render
from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.template import loader
from django.http import HttpResponse

from .models import Tema

# Tercihlere göre otomatik tema CSS oluştur.
def dinamikCSS(request):
	arkaplan = Tema.objects.all()[0].arkaplan.replace(settings.BASE_DIR,'')
	koyuYazi = Tema.objects.all()[0].koyuYazı
	template = loader.get_template('style.css')
	context = {
		'arkaplan': arkaplan,
		'koyuYazi': koyuYazi
	}

	return HttpResponse(template.render(context, request), content_type="text/css")
	


# Kullanıcıyı ilk karşılayan ana menüyü göster.
@login_required()
def sistemBilgiGoster(request):
    return render(request, 'bilgi.tpl')