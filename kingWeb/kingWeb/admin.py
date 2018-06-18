from django.contrib import admin

# Register your models here.
from kingWeb import models
admin.site.register(models.SysDepartment)
admin.site.register(models.SysLoginlog)
admin.site.register(models.SysMenu)
admin.site.register(models.SysModule)
admin.site.register(models.SysOperationlog)
admin.site.register(models.SysRole)
admin.site.register(models.SysRolemenu)
admin.site.register(models.SysSystemoption)
admin.site.register(models.SysTablecolumn)
admin.site.register(models.SysTablelist)
admin.site.register(models.SysUser)
admin.site.register(models.SysUserdepartment)
admin.site.register(models.SysUserrole)
admin.site.register(models.TestLeader)