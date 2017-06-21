# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Baglanti',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, primary_key=True, auto_created=True)),
                ('sunucu', models.CharField(default='localhost', max_length=50)),
                ('kullanici', models.CharField(max_length=32)),
                ('sifre', models.CharField(max_length=40)),
            ],
            options={
                'db_table': 'Baglanti',
                'verbose_name': 'SSH Bağlantı Ayarı',
                'verbose_name_plural': 'SSH Bağlantı Ayarları',
            },
        ),
        migrations.CreateModel(
            name='Tema',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, primary_key=True, auto_created=True)),
                ('arkaplan', models.FilePathField(recursive=True, default='mavi.png', match='.*\\.png$', path='/home/kandalf/projects/komutan-next/static/img/artalanlar')),
                ('koyuYazı', models.BooleanField()),
            ],
            options={
                'db_table': 'Tema',
                'verbose_name': 'Görünüm Ayarı',
                'verbose_name_plural': 'Görünüm Ayarları',
            },
        ),
    ]
