# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cekirdek', '0004_auto_20170615_1332'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tema',
            name='artalan',
            field=models.FilePathField(recursive=True, match='*.png', path='/home/kandalf/'),
        ),
    ]
