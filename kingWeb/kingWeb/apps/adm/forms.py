from django.forms import ModelForm,CharField
from kingWeb.models import *
from django.contrib.auth.models import User

class BaseForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(BaseForm, self).__init__(*args, **kwargs)
        for field_name in self.fields:
            field = self.fields.get(field_name)
            field.required = False

class SysDepartmentForm(BaseForm):
    class Meta:
        model = SysDepartment
        fields = '__all__'

class SysMenuForm(BaseForm):
    class Meta:
        model = SysMenu
        fields = '__all__'

class SysModuleForm(BaseForm):
    class Meta:
        model = SysModule
        fields = '__all__'

class SysRoleForm(BaseForm):
    class Meta:
        model = SysRole
        fields = '__all__'

class SysSystemOptionForm(BaseForm):
    class Meta:
        model = SysSystemOption
        fields = '__all__'

class SysTableListForm(BaseForm):
    class Meta:
        model = SysTableList
        fields = '__all__'

class SysTableColumnForm(BaseForm):
    class Meta:
        model = SysTableColumn
        fields = '__all__'



