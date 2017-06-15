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
                ('id', models.AutoField(verbose_name='ID', auto_created=True, primary_key=True, serialize=False)),
                ('sunucu', models.CharField(max_length=50)),
                ('kullanici', models.CharField(max_length=32)),
                ('sifre', models.CharField(max_length=40)),
            ],
        ),
    ]
