{% extends 'yapi.tpl' %}
{% block title %}Komutan - Komuta Merkezi{% endblock %}
{% block content %}
<h2>Komuta Merkezi</h2>
<br>
<br>
<div class="row">
<form id="betikForm" class="form-inline" role="form">
	{% csrf_token %}
	<div class="form-group">
		<select class="form-control" name="betik" id="betik" >
		<option value="">---</option>
		{% for betik in betikler %}
			<option>{{betik}}</option>
		{% endfor %}
		</select>
	</div>
{% if parametreler %}
{% for parametre, degerler in parametreler.items %} 
<div class="form-group kutu">
<span>{{ degerler.0 }}: </span>
<input type="text" class="" name="{{ parametre }}" value="{{ degerler.1 }}">  
</div>
{% endfor %}
{% endif %}
	<div class="form-group kutu">	 
        <span> Root Yetkisiyle Çalıştır&nbsp;&nbsp;</span>
        <div class="material-switch pull-right">
            <input id="rootCheckbox" name="sudo" type="checkbox"/> 
            <label for="rootCheckbox" class="label-success"></label>
        </div>
	</div>
<div class="form-group">
	<button type="button" class="btn btn-success calistir">Çalıştır</button>
</div>

</form>

</div>
<div class="row">
	<br>
	<br>
	<pre class="well cikti"></pre>
</div>
</div>		
{% endblock content %}

{% block customjs %}
<script>
	{% if betik %}
		$('#betik').val("{{ betik }}")
	{% endif %}
	
	$('#betik').change(function(event) {
		if (this.value) {
			window.location.replace("?betik="+this.value);
		}
	});

	$(".calistir").click(function () {
		
		formVerisi = $('#betikForm').serialize();		

	    $.ajax({
	            url: '/komutaModul/betikCalistir/',
	            type: 'POST',
	            data: formVerisi,
	            success: function (data) {
	            	$('.cikti').show();
	                $('.cikti').html(data);
	            }
	        });
	});
</script>
{% endblock customjs %}
{% block customcss %}
<style>
	.cikti{
		height: 60vh;
		display: none;
	}
</style>
{% endblock customcss %}