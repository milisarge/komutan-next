# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cekirdek', '0005_auto_20170615_1333'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tema',
            name='artalan',
            field=models.FilePathField(path='/home/kandalf', match='*.png'),
        ),
    ]
