# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Betikler',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, primary_key=True, auto_created=True)),
                ('betik', models.CharField(default='', max_length=50)),
            ],
            options={
                'db_table': 'Betikler',
                'verbose_name': 'Betik',
                'verbose_name_plural': 'Betikler',
            },
        ),
        migrations.CreateModel(
            name='Parametreler',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, primary_key=True, auto_created=True)),
                ('parametre', models.CharField(default='', max_length=12)),
                ('parametreBaslik', models.CharField(default='', max_length=50)),
                ('deger', models.CharField(default='', max_length=50)),
                ('betik', models.ForeignKey(to='komutaModul.Betikler')),
            ],
            options={
                'ordering': ('parametre',),
            },
        ),
    ]
