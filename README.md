# komutan-next
Komutan Web Yönetim Sistemi Yenileme Çalışması

## Bağımlılıklar
`
pip3 install django
pip3 install GitPython
`
## Uygulamayı deploy etme
```
git clone https://github.com/geekdinazor/komutan-next.git
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py createsuperuser
python3 manage.py runserver
```

## Modül ekleme
Sisteme **yeniModul** şeklinde bir modül eklemek için:

`
python3 manage.py startapp yeniModul`
`


## Yapılacaklar
- [X] Kullanıcı Girişi
- [X] Genel tasarımın oluşturulması
- [ ] Varolan Modüllerin önyüzlerinin (frontend) oluşturulması
- [X] admin panelinde gözükecek komutan tercihleri modülünün yazılması
- [ ] [Fabric](http://docs.fabfile.org/en/1.13/) modülü kullanılarak komut çatısının oluşturulması
- [ ] komutaModul modülünün yazılması
- [ ] mpsModul modülünün yazılması
- [ ] surecModul modülünün yazılması
- [ ] agModul modülünün yazılması
- [ ] servisModul modülünün yazılması
- [X] komutanGuncelleModul modülünün yazılması
- [ ] ayarModul modülünün yazılması (Sistem Ayarları)
- [ ] Güvenlik önlemleri


