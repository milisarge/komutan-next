{% extends 'yapi.tpl' %}
<!-- Kullanıcı  giriş yapmamış ise yönlendir. -->
{% if user.is_anonymous %}
<meta http-equiv="refresh" content="0; url=/giris"/>
{% else %}
{% block content %}
<h2>MENU</h2>

	<a href="/komutaModul" class = "list-group-item">KOMUTA MERKEZİ</a>  
	<a href="/rehberModul" class = "list-group-item">REHBER-MİLİS WİKİ</a>  
	<a href="/mpsModul" class = "list-group-item">MİLİS YAZILIM MERKEZİ - MPS WEB</a> 
	<a href="/surecModul" class = "list-group-item">SÜREÇ MODÜLÜ</a> 
	<a href="/arayuzModul" class = "list-group-item">ARAYÜZ MODÜLÜ</a> 
	<a href="/agModul" class = "list-group-item">AĞ AYARLARI</a> 
	<a href="/raporModul" class = "list-group-item">RAPOR</a> 
	<a href="/servisModul" class = "list-group-item">SERVİS AYARLARI</a> 
	<a href="/kurulum" class = "list-group-item">MİLİS LİNUX KURULUM</a> 
	<a href="/komutanGuncelle" class = "list-group-item">KOMUTAN GÜNCELLE</a> 
	<a href="/komutanAyarlar" class = "list-group-item">KOMUTAN AYARLAR</a> 
	<a href="/cikis" class = "list-group-item">ÇIKIŞ</a> 
	
</body>
{% endblock content %}  
{% endif %}