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
		{% for betik in betikler %}
			<option>{{betik}}</option>
		{% endfor %}
		</select>
	</div>
	<div class="form-group">	 
        <li class="list-group-item">
        <span> Root Yetkisiyle Çalıştır&nbsp;&nbsp;</span>
        <div class="material-switch pull-right">
            <input id="rootCheckbox" name="sudo" type="checkbox"/> 
            <label for="rootCheckbox" class="label-success"></label>
        </div>
</li>
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
	$(".calistir").click(function () {

		var rootYetkisi = "&sudo=0"

		if ($(':input[name="sudo"]:checked').length) {

			rootYetkisi = "&sudo=1"

		}
		
		formVerisi = $('#betikForm').serialize();		

	    $.ajax({
	            url: '/komutaModul/betikCalistir/',
	            type: 'POST',
	            data: formVerisi + rootYetkisi,
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