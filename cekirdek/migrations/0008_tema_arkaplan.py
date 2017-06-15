# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cekirdek', '0007_remove_tema_artalan'),
    ]

    operations = [
        migrations.AddField(
            model_name='tema',
            name='arkaplan',
            field=models.FilePathField(path='/home/kandalf/projects/komutan-next/static/img/artalanlar', default='mavi.png', recursive=True, match='.*\\.png$'),
        ),
    ]
