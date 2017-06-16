<!-- Kullanıcı zaten giriş yapmış ise yönlendir. -->
{% if user.is_authenticated %}
    <meta http-equiv="refresh" content="0; url=/AnaSayfa"/>
{% endif %}
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Komutan Giriş</title>

    <!-- Bootstrap Core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Dinamik CSS -->
    <link href="/style.css" rel="stylesheet" type="text/css">

</head>

<body>
<div id="page-wrapper" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <h1 class="text-center">Komutan Web Giriş</h1>
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block" action="" method="post">
            {% csrf_token %}
            <div class="form-group">
              <input type="text" class="form-control input-lg" placeholder="Kullanıcı" id="username" name="username">
            </div>
            <div class="form-group">
              <input type="password" class="form-control input-lg" placeholder="Şifre" id="password" name="password">
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-lg btn-block" type="submit">Giriş Yap</button>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
                   {% if form.errors %}
                    <p class="alert dark alert-danger alert-dismissible text-center" role="alert">Bilgileriniz Yanlış gibi
                        gözüküyor lütfen tekrar deneyiniz</p>
                {% endif %}
                {% if ileri %}
                    {% if user.is_authenticated %}
                        <p class="alert dark alert-warning alert-dismissible text-center" role="alert">Bu Alana giriş yapabilmek
                            için yetkilendirilmiş bir hesabınız bulunmuyor.</p>
                    {% else %}
                        <p class="alert dark alert-warning alert-dismissible text-center" role="alert">
                            Bu Sayfayı Görebilmek için Lütfen Oturum Açın
                        </p>
                    {% endif %}
                {% endif %}
          </div>    
      </div>
  </div>
  </div>
</div>
</body>

   <!-- jQuery Version 1.11.1 -->
    <script src="/static/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/static/js/bootstrap.min.js"></script>

    <!-- Custom JS -->

    {% block customjs %}{% endblock %}

</html>
