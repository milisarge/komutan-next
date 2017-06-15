# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cekirdek', '0003_tema'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tema',
            name='artalan',
            field=models.FilePathField(match='*.png', recursive=True, path='/static/img/artalanlar/'),
        ),
    ]
