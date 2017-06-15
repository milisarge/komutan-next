# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cekirdek', '0002_auto_20170615_1217'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tema',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True)),
                ('artalan', models.FilePathField(recursive=True, match='*.png', path='../static/img/artalanlar/')),
                ('koyuYazı', models.BooleanField()),
            ],
            options={
                'verbose_name_plural': 'Görünüm Ayarları',
                'verbose_name': 'Görünüm Ayarı',
                'db_table': 'Tema',
            },
        ),
    ]
