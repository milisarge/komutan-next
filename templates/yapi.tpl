<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{% block title %}{% endblock %}</title>

    <!-- Bootstrap Core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->

    {% block customcss %}{% endblock %}

</head>

<body>
	{% block content %}
    {% endblock %}
</body>

   <!-- jQuery Version 1.11.1 -->
    <script src="/static/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/static/js/bootstrap.min.js"></script>

    <!-- Custom JS -->

    {% block customjs %}{% endblock %}

</html>
