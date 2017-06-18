{% extends 'yapi.tpl' %}
{% block title %}Komutan - Komuta Merkezi{% endblock %}
{% block content %}
<h2>Komuta Merkezi</h2>
<br>
<br>
<div class="col-xs-6">
<form id="betikForm" class="form-inline" role="form">
	{% csrf_token %}
	<div class="form-group">
		<select class="form-control" name="betik" id="betik" > 
		{% for betik in betikler %}
			<option>{{betik}}</option>
		{% endfor %}
		</select>
		 <input type="checkbox" class="form-control" name="sudo"> 
		 	Root yetkisiyle çalıştır
	</div>
</form>
<button type="button" class="btn btn-success calistir">Çalıştır</button>
</div>
<div class="col-xs-12">
	<br>
	<br>
	<pre class="well cikti"></pre>
</div>
</div>		
{% endblock content %}

{% block customjs %}
<script>
	$(".calistir").click(function () {

		var sudo = "&sudo=0"

		if ($(':input[name="sudo"]:checked').length) {

			sudo = "&sudo=1"

		}
		
		formVerisi = $('#betikForm').serialize();		

	    $.ajax({
	            url: '/komutaModul/betikCalistir/',
	            type: 'POST',
	            data: formVerisi + sudo,
	            success: function (data) {
	                $('.cikti').html(data)
	            }
	        });
	});
</script>
{% endblock customjs %}