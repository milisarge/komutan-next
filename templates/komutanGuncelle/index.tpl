{% extends 'yapi.tpl' %}

{% block customjs %}
<script>
	$(document).ready(function(){
	    $("#guncelleButon").click(function(){
	        $.get("/komutanGuncelle/guncelle", function(data, status){
	            $('#guncellemeDurum').html(data);
	        });
	    });
});
</script>
{% endblock customjs %}

{% block content %}
<h2>Komutan Güncelleme</h2>
<br>
<br>
<div class="alert alert-warning">
	<h3 class="text-center">Komutan Next</h3>
	<h3 class="text-center">Komutan sürümü: {{ versiyon }}-git{{sha}}</h3>
	<br>
	<br>
	<button id="guncelleButon" class="btn btn-lg btn-success center-block">Komutan'ı Güncelle</button>
	<br>
	<br>
<p id="guncellemeDurum" class="text-center"></p>
</div>
{% endblock content %}
