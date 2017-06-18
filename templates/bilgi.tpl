{% extends 'yapi.tpl' %}
<!-- Kullanıcı  giriş yapmamış ise yönlendir. -->
{% block title %}Komutan - Sistem Bilgisi{% endblock %}
{% if user.is_anonymous %}
<meta http-equiv="refresh" content="0; url=/giris"/>
{% else %}
{% block content %}
<h2>Sistem Bilgileri</h2>
<br>
<br>
<div class="col-md-6">
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Sistem hakkında</h3>
  </div>
  <div class="panel-body">
    Sistem bilgileri burada.
  </div>
</div>
</div>
<div class="col-md-6">
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Sistem kullanımı</h3>
  </div>
  <div class="panel-body">
    Sistem kullanım bilgileri burada.
  </div>
</div>
</div>	
</body>
{% endblock content %}  
{% endif %}