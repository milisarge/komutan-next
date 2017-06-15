# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cekirdek', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='baglanti',
            options={'verbose_name_plural': 'SSH Bağlantı Ayarları', 'verbose_name': 'SSH Bağlantı Ayarı'},
        ),
        migrations.AlterModelTable(
            name='baglanti',
            table='Baglanti',
        ),
    ]
