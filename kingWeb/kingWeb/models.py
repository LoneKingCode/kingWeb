from __future__ import unicode_literals
from django.db import models
from django.utils import timezone
from enum import IntEnum
from django.contrib.auth.models import User
from django.db.models.signals import post_save

############################################################################
#枚举
class MenuType(IntEnum):
    module = 0,
    menu = 1,
    button = 2,

class UserStatus(IntEnum):
    inactive = 0,
    active = 1,
    disable = 2,

class TableImportType(IntEnum):
    insert = 0,
    update = 1,

#表结构中列类型
DataType = ['out','enum','checkbox','date','datetime','file','string','int','decimal','custom']

############################################################################
#视图model
class DataTableModel:
    draw = 0
    recordsTotal = 0
    recordsFiltered = 0
    data = None
    def __init__(self,draw,recordsTotal,recordsFiltered,data):
        self.draw = draw
        self.recordsTotal = recordsTotal
        self.recordsFiltered = recordsFiltered
        self.data = data
    def tojson(self):
        return {
            'draw':self.draw,
            'recordsTotal':self.recordsTotal,
            'recordsFiltered':self.recordsFiltered,
            'data':self.data,
            }
    def to_dict(self):
        data = {}
        for f in self._meta.concrete_fields:
            data[f.name] = f.value_from_object(self)
        return data

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            if isinstance(getattr(self, attr),datetime.datetime):
                d[attr] = getattr(self, attr).strftime('%Y-%m-%d %H:%M:%S')
            elif isinstance(getattr(self, attr),datetime.date):
                d[attr] = getattr(self, attr).strftime('%Y-%m-%d')
            else:
                d[attr] = getattr(self, attr)

        import json
        return json.dumps(d)



class ResultModel:
    flag = False
    data = None
    msg = ''
    def tojson(self):
        return {
            'flag':self.flag,
            'data':self.data,
            'msg':self.msg,
            }
    def __str__(self):
       return self.msg
    def to_dict(self):
        data = {}
        for f in self._meta.concrete_fields:
            data[f.name] = f.value_from_object(self)
        return data

############################################################################################################################
#数据库model
class BaseModel(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)
    createdatetime = models.DateTimeField(db_column='CreateDateTime',default=timezone.now)
    modifydatetime = models.DateTimeField(db_column='ModifyDateTime',default=timezone.now)
    creator = models.IntegerField(db_column='Creator',blank=True, null=True)
    modifier = models.IntegerField(db_column='Modifier',blank=True, null=True)

    class Meta:
        abstract = True

class SysDepartment(BaseModel):
    description = models.CharField(db_column='Description', max_length=100)
    leader = models.CharField(db_column='Leader', max_length=20)
    name = models.CharField(db_column='Name', max_length=20)
    parentid = models.IntegerField(db_column='ParentId', blank=True, null=True)
    def __str__(self):
        return self.name
    class Meta:
        db_table = 'Sys_Department'

class SysLoginlog(BaseModel):
    clientip = models.CharField(db_column='ClientIP', max_length=15, blank=True, null=True)
    clientinfo = models.TextField(db_column='ClientInfo', blank=True, null=True)
    username = models.CharField(db_column='UserName', max_length=20)
    description = models.CharField(db_column='Description', max_length=40, blank=True, null=True)
    def __str__(self):
        return self.username + ' ' + self.description
    class Meta:
         db_table = 'Sys_LoginLog'


class SysMenu(BaseModel):
    name = models.CharField(db_column='Name', max_length=18)
    listorder = models.IntegerField(db_column='ListOrder')
    parentid = models.IntegerField(db_column='ParentId' ,blank=True, null=True)
    type = models.IntegerField(db_column='Type')
    url = models.CharField(db_column='Url', max_length=300)
    moduleid = models.IntegerField(db_column='ModuleId')
    icon = models.CharField(db_column='Icon', max_length=50)
    def __str__(self):
        return self.name
    class Meta:
        db_table = 'Sys_Menu'


class SysModule(BaseModel):
    description = models.CharField(db_column='Description', max_length=30)
    name = models.CharField(db_column='Name', max_length=18)
    def __str__(self):
        return self.name + ' ' + self.description
    class Meta:
        db_table = 'Sys_Module'


class SysOperationLog(BaseModel):
    clientip = models.CharField(db_column='ClientIP', max_length=15)
    clientinfo = models.CharField(db_column='ClientInfo', max_length=200, blank=True, null=True)
    operationdescription = models.CharField(db_column='OperationDescription', max_length=100)
    operationurl = models.CharField(db_column='OperationUrl', max_length=300, blank=True, null=True)
    username = models.TextField(db_column='UserName', blank=True, null=True)
    def __str__(self):
        return self.username + ' ' + self.operationdescription
    class Meta:
        db_table = 'Sys_OperationLog'


class SysRole(BaseModel):
    description = models.CharField(db_column='Description', max_length=30)
    name = models.CharField(db_column='Name', max_length=256, blank=True, null=True)
    def __str__(self):
        return self.name
    class Meta:
        db_table = 'Sys_Role'


class SysRoleMenu(BaseModel):
    id = models.AutoField(db_column='Id', primary_key=True)
    createdatetime = models.DateTimeField(db_column='CreateDateTime', blank=True, null=True)
    menu = models.ForeignKey(SysMenu,on_delete=models.CASCADE)
    role = models.ForeignKey(SysRole,on_delete=models.CASCADE)

    class Meta:
        db_table = 'Sys_RoleMenu'


class SysSystemOption(BaseModel):
    code = models.CharField(db_column='Code', max_length=100, blank=True, null=True)
    value = models.CharField(db_column='Value', max_length=1000)
    def __str__(self):
        return self.code + ':' + value
    class Meta:
        db_table = 'Sys_SystemOption'

class SysTableList(BaseModel):
    defaultfilter = models.TextField(db_column='DefaultFilter', blank=True, default='')
    defaultsort = models.TextField(db_column='DefaultSort', blank=True, default='')
    deletetablename = models.TextField(db_column='DeleteTableName', blank=True, default='')
    description = models.TextField(db_column='Description', blank=True, default='')
    extendfunction = models.TextField(db_column='ExtendFunction', blank=True, default='')
    topextendfunction = models.TextField(db_column='TopExtendFunction', blank=True, default='')
    forbiddenaddfilter = models.TextField(db_column='ForbiddenAddFilter', blank=True, default='')
    forbiddendeletefilter = models.TextField(db_column='ForbiddenDeleteFilter', blank=True, default='')
    forbiddenupdatefilter = models.TextField(db_column='ForbiddenUpdateFilter', blank=True, default='')
    importtype = models.IntegerField(db_column='ImportType', blank=True)
    isview = models.IntegerField(db_column='IsView', default=0)
    name = models.TextField(db_column='Name', blank=True, default='')
    allowadd = models.IntegerField(db_column='AllowAdd', default=0)
    allowdelete = models.IntegerField(db_column='AllowDelete', default=0)
    allowedit = models.IntegerField(db_column='AllowEdit', default=0)
    allowexport = models.IntegerField(db_column='AllowExport', default=0)
    allowimport = models.IntegerField(db_column='AllowImport', default=0)
    allowview = models.IntegerField(db_column='AllowView', default=0)
    allowdetail = models.IntegerField(db_column='AllowDetail', default=0)
    vieweditwidthheight = models.TextField(db_column='ViewEditWidthHeight', blank=True, default='')
    javascript = models.TextField(db_column='JavaScript', blank=True, default='')
    columnperrow = models.IntegerField(db_column='ColumnPerRow', default=0)
    def __str__(self):
        return self.name + ' ' + self.description
    class Meta:
        db_table = 'Sys_TableList'

class SysTableColumn(BaseModel):
    addvisible = models.IntegerField(db_column='AddVisible',default=0)
    datatype = models.TextField(db_column='DataType',blank=True, default='')
    description = models.TextField(db_column='Description', blank=True, default='')
    editorder = models.IntegerField(db_column='EditOrder',default=0)
    editvisible = models.IntegerField(db_column='EditVisible',default=0)
    enumrange = models.TextField(db_column='EnumRange', blank=True, default='')
    selectrange = models.TextField(db_column='SelectRange', blank=True, default='')
    forbiddenfileextension = models.TextField(db_column='ForbiddenFileExtension', blank=True,default='')
    validationrule = models.TextField(db_column='ValidationRule', blank=True,default='')
    customcontent = models.TextField(db_column='CustomContent', blank=True,default='')
    exportvisible = models.IntegerField(db_column='ExportVisible',default=0)
    importvisible = models.IntegerField(db_column='ImportVisible',default=0)
    listorder = models.IntegerField(db_column='ListOrder',default=0)
    listvisible = models.IntegerField(db_column='ListVisible',default=0)
    maxlength = models.IntegerField(db_column='MaxLength',default=0)
    name = models.TextField(db_column='Name', blank=True, default='')
    outsql = models.TextField(db_column='OutSql', blank=True, default='')
    primarykey = models.IntegerField(db_column='PrimaryKey',default=0)
    required = models.IntegerField(db_column='Required',default=0)
    searchvisible = models.IntegerField(db_column='SearchVisible',default=0)
    vieworder = models.IntegerField(db_column='ViewOrder',default=0)
    viewvisible = models.IntegerField(db_column='ViewVisible',default=0)
    tableid = models.IntegerField(db_column='TableId')
    def __str__(self):
        return self.name + ' ' + self.description
    class Meta:
        db_table = 'Sys_TableColumn'


class SysUserDepartment(BaseModel):
    department = models.ForeignKey(SysDepartment,on_delete=models.CASCADE)
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    class Meta:
        db_table = 'Sys_UserDepartment'

class SysUserRole(models.Model):
    role = models.ForeignKey(SysRole,on_delete=models.CASCADE)
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    class Meta:
        db_table = 'Sys_UserRole'

class SysUserProfile(BaseModel):
    user = models.OneToOneField(User,on_delete=models.CASCADE)
    status = models.SmallIntegerField(db_column='Status',default=0)
    personname = models.CharField(db_column='PersonName',max_length=50,blank=True,null=True)
    imagepath = models.CharField(db_column='ImagePath',max_length=256,blank=True,null=True)
    class Meta:
        db_table = 'Sys_UserProfile'
    def create_user_profile(sender, instance,created,**kwargs):
         if created:
            profile = SysUserProfile()
            profile.user = instance
            profile.save()
    #当创建User实体且保存时，会同时建立对应用户的SysUserProfile
    post_save.connect(create_user_profile, sender=User)

class TestLeader(BaseModel):
    name = models.CharField(db_column='Name', max_length=30)
    test1 = models.CharField(db_column='Test1', max_length=300,default='',null=True)
    test2 = models.CharField(db_column='Test2', max_length=300,default='',null=True)
    test3 = models.CharField(db_column='Test3', max_length=300,default='',null=True)
    parentid = models.IntegerField(db_column='ParentId')
    type = models.CharField(db_column='Type', max_length=30)
    def __str__(self):
        return self.name
    class Meta:
        db_table = 'Test_Leader'
