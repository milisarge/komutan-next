{% extends 'yapi.tpl' %}
<!-- Kullanıcı zaten giriş yapmış ise yönlendir. -->
{% if user.is_authenticated %}
    <meta http-equiv="refresh" content="0; url=/AnaSayfa"/>
{% endif %}
{% block content %}
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
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
{% endblock content %}