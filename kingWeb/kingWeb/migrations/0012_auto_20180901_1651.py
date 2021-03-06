# -*- coding: utf-8 -*-
# Generated by Django 1.11.13 on 2018-09-01 16:51
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('kingWeb', '0011_sysuserprofile_personname'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sysrolemenu',
            name='menuid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='kingWeb.SysMenu'),
        ),
        migrations.AlterField(
            model_name='sysrolemenu',
            name='roleid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='kingWeb.SysRole'),
        ),
        migrations.AlterField(
            model_name='sysuserdepartment',
            name='departmentid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='kingWeb.SysDepartment'),
        ),
        migrations.AlterField(
            model_name='sysuserdepartment',
            name='userid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='sysuserrole',
            name='roleid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='kingWeb.SysRole'),
        ),
        migrations.AlterField(
            model_name='sysuserrole',
            name='userid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
