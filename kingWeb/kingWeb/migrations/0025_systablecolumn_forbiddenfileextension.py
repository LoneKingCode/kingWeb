# -*- coding: utf-8 -*-
# Generated by Django 1.11.13 on 2019-01-13 15:20
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('kingWeb', '0024_auto_20190108_1951'),
    ]

    operations = [
        migrations.AddField(
            model_name='systablecolumn',
            name='forbiddenfileextension',
            field=models.TextField(blank=True, db_column='ForbiddenFileExtension', null=True),
        ),
    ]
