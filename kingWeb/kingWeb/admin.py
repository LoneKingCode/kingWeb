from django.contrib import admin

# Register your models here.
from kingWeb import models
admin.site.register(models.SysDepartment)
admin.site.register(models.SysLoginlog)
admin.site.register(models.SysMenu)
admin.site.register(models.SysModule)
admin.site.register(models.SysOperationLog)
admin.site.register(models.SysRole)
admin.site.register(models.SysRoleMenu)
admin.site.register(models.SysSystemOption)
admin.site.register(models.SysTableColumn)
admin.site.register(models.SysTablelist)
admin.site.register(models.SysUser)
admin.site.register(models.SysUserDepartment)
admin.site.register(models.SysUserRole)
admin.site.register(models.TestLeader)