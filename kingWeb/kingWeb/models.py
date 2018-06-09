from __future__ import unicode_literals
from datetime import  timezone
from django.db import models
from django.utils import timezone

class BaseModel(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    createdatetime = models.DateTimeField(db_column='CreateDateTime',default=timezone.now)  # Field name made lowercase.
    modifydatetime = models.DateTimeField(db_column='ModifyDateTime',default=timezone.now)
    creator = models.IntegerField(db_column='Creator',blank=True, null=True)  # Field name made lowercase.
    modifier = models.IntegerField(db_column='Modifier',blank=True, null=True)  # Field name made lowercase.

    class Meta:
        abstract = True

class SysDepartment(BaseModel):
    description = models.CharField(db_column='Description', max_length=100)  # Field name made lowercase.
    leader = models.CharField(db_column='Leader', max_length=20)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=20)  # Field name made lowercase.
    parentid = models.IntegerField(db_column='ParentId')  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_Department'

class SysLoginlog(BaseModel):
    clientip = models.CharField(db_column='ClientIP', max_length=15, blank=True, null=True)  # Field name made lowercase.
    clientmac = models.CharField(db_column='ClientMac', max_length=40, blank=True, null=True)  # Field name made lowercase.
    username = models.CharField(db_column='UserName', max_length=20)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=40, blank=True, null=True)  # Field name made lowercase.

    class Meta:
         db_table = 'Sys_LoginLog'


class SysMenu(BaseModel):
    name = models.CharField(db_column='Name', max_length=18)  # Field name made lowercase.
    listorder = models.IntegerField(db_column='ListOrder')  # Field name made lowercase.
    parentid = models.IntegerField(db_column='ParentId')  # Field name made lowercase.
    type = models.IntegerField(db_column='Type')  # Field name made lowercase.
    url = models.CharField(db_column='Url', max_length=300)  # Field name made lowercase.
    moduleid = models.IntegerField(db_column='ModuleId')  # Field name made lowercase.
    icon = models.CharField(db_column='Icon', max_length=50)  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_Menu'


class SysModule(BaseModel):
    description = models.CharField(db_column='Description', max_length=30)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=18)  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_Module'


class SysOperationlog(BaseModel):
    clientip = models.CharField(db_column='ClientIP', max_length=15)  # Field name made lowercase.
    clientmac = models.CharField(db_column='ClientMac', max_length=40)  # Field name made lowercase.
    operationdescription = models.CharField(db_column='OperationDescription', max_length=100)  # Field name made lowercase.
    operationurl = models.CharField(db_column='OperationUrl', max_length=300, blank=True, null=True)  # Field name made lowercase.
    username = models.TextField(db_column='UserName', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_OperationLog'


class SysRole(BaseModel):
    concurrencystamp = models.TextField(db_column='ConcurrencyStamp', blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=30)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=256, blank=True, null=True)  # Field name made lowercase.
    normalizedname = models.CharField(db_column='NormalizedName', max_length=100, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_Role'


class SysRolemenu(BaseModel):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    createdatetime = models.DateTimeField(db_column='CreateDateTime', blank=True, null=True)  # Field name made lowercase.
    menuid = models.IntegerField(db_column='MenuId')  # Field name made lowercase.
    roleid = models.IntegerField(db_column='RoleId')  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_RoleMenu'


class SysSystemoption(BaseModel):
    code = models.CharField(db_column='Code', max_length=100, blank=True, null=True)  # Field name made lowercase.
    value = models.CharField(db_column='Value', max_length=1000)  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_SystemOption'


class SysTablecolumn(BaseModel):
    addvisible = models.IntegerField(db_column='AddVisible')  # Field name made lowercase.
    datatype = models.IntegerField(db_column='DataType')  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.
    editorder = models.IntegerField(db_column='EditOrder')  # Field name made lowercase.
    editvisible = models.IntegerField(db_column='EditVisible')  # Field name made lowercase.
    enumrange = models.TextField(db_column='EnumRange', blank=True, null=True)  # Field name made lowercase.
    exportvisible = models.IntegerField(db_column='ExportVisible')  # Field name made lowercase.
    importvisible = models.IntegerField(db_column='ImportVisible')  # Field name made lowercase.
    listorder = models.IntegerField(db_column='ListOrder')  # Field name made lowercase.
    listvisible = models.IntegerField(db_column='ListVisible')  # Field name made lowercase.
    maxlength = models.IntegerField(db_column='MaxLength')  # Field name made lowercase.
    name = models.TextField(db_column='Name', blank=True, null=True)  # Field name made lowercase.
    outsql = models.TextField(db_column='OutSql', blank=True, null=True)  # Field name made lowercase.
    primarkey = models.IntegerField(db_column='PrimarKey')  # Field name made lowercase.
    required = models.IntegerField(db_column='Required')  # Field name made lowercase.
    searchvisible = models.IntegerField(db_column='SearchVisible')  # Field name made lowercase.
    tableid = models.IntegerField(db_column='TableId')  # Field name made lowercase.
    vieworder = models.IntegerField(db_column='ViewOrder')  # Field name made lowercase.
    viewvisible = models.IntegerField(db_column='ViewVisible')  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_TableColumn'


class SysTablelist(BaseModel):
    defaultfilter = models.TextField(db_column='DefaultFilter', blank=True, null=True)  # Field name made lowercase.
    defaultsort = models.TextField(db_column='DefaultSort', blank=True, null=True)  # Field name made lowercase.
    deletetablename = models.TextField(db_column='DeleteTableName', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.
    extendfunction = models.TextField(db_column='ExtendFunction', blank=True, null=True)  # Field name made lowercase.
    forbiddenaddfilter = models.TextField(db_column='ForbiddenAddFilter', blank=True, null=True)  # Field name made lowercase.
    forbiddendeletefilter = models.TextField(db_column='ForbiddenDeleteFilter', blank=True, null=True)  # Field name made lowercase.
    forbiddenupdatefilter = models.TextField(db_column='ForbiddenUpdateFilter', blank=True, null=True)  # Field name made lowercase.
    importtype = models.IntegerField(db_column='ImportType')  # Field name made lowercase.
    isview = models.IntegerField(db_column='IsView')  # Field name made lowercase.
    name = models.TextField(db_column='Name', blank=True, null=True)  # Field name made lowercase.
    allowdelete = models.IntegerField(db_column='AllowDelete')  # Field name made lowercase.
    allowedit = models.IntegerField(db_column='AllowEdit')  # Field name made lowercase.
    allowexport = models.IntegerField(db_column='AllowExport')  # Field name made lowercase.
    allowimport = models.IntegerField(db_column='AllowImport')  # Field name made lowercase.
    allowview = models.IntegerField(db_column='AllowView')  # Field name made lowercase.
    allowadd = models.IntegerField(db_column='AllowAdd')  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_TableList'


class SysUser(BaseModel):
    accessfailedcount = models.IntegerField(db_column='AccessFailedCount')  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=256, blank=True, null=True)  # Field name made lowercase.
    emailconfirmed = models.IntegerField(db_column='EmailConfirmed')  # Field name made lowercase.
    lockoutenabled = models.IntegerField(db_column='LockoutEnabled')  # Field name made lowercase.
    lockoutend = models.TextField(db_column='LockoutEnd', blank=True, null=True)  # Field name made lowercase.
    normalizedemail = models.CharField(db_column='NormalizedEmail', max_length=100, blank=True, null=True)  # Field name made lowercase.
    normalizedusername = models.CharField(db_column='NormalizedUserName', max_length=100, blank=True, null=True)  # Field name made lowercase.
    passwordhash = models.TextField(db_column='PasswordHash', blank=True, null=True)  # Field name made lowercase.
    phonenumber = models.TextField(db_column='PhoneNumber', blank=True, null=True)  # Field name made lowercase.
    phonenumberconfirmed = models.IntegerField(db_column='PhoneNumberConfirmed')  # Field name made lowercase.
    realname = models.TextField(db_column='RealName', blank=True, null=True)  # Field name made lowercase.
    securitystamp = models.TextField(db_column='SecurityStamp', blank=True, null=True)  # Field name made lowercase.
    status = models.IntegerField(db_column='Status')  # Field name made lowercase.
    twofactorenabled = models.IntegerField(db_column='TwoFactorEnabled')  # Field name made lowercase.
    username = models.CharField(db_column='UserName', max_length=256, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_User'


class SysUserdepartment(BaseModel):
    departmentid = models.IntegerField(db_column='DepartmentId')  # Field name made lowercase.
    userid = models.IntegerField(db_column='UserId')  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_UserDepartment'

class SysUserrole(models.Model):
    userid = models.IntegerField(db_column='UserId')  # Field name made lowercase.
    roleid = models.IntegerField(db_column='RoleId')  # Field name made lowercase.

    class Meta:
        db_table = 'Sys_UserRole'


class TestLeader(BaseModel):
    name = models.CharField(db_column='Name', max_length=30)  # Field name made lowercase.
    parentid = models.IntegerField(db_column='ParentId')  # Field name made lowercase.
    type = models.CharField(db_column='Type', max_length=30)  # Field name made lowercase.

    class Meta:
        db_table = 'Test_Leader'