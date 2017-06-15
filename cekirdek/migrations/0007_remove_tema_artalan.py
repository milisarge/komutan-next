# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cekirdek', '0006_auto_20170615_1335'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tema',
            name='artalan',
        ),
    ]
