from django.contrib import admin

# Register your models here.
from kingWeb import models
admin.site.register(models.TestLeader)
admin.site.register(models.SysRole)