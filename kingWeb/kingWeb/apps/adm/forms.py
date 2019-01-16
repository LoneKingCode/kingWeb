from django.forms import ModelForm,CharField
from kingWeb.models import *
from django.contrib.auth.models import User
class UserViewModel(ModelForm):
    class Meta:
        model = User
        #fields= '__all__'
        fields = ['username', 'password']

class ModuleForm(ModelForm):
    class Meta:
        model = SysModule
        fields = '__all__'
    def __init__(self, *args, **kwargs):
        super(ModuleForm, self).__init__(*args, **kwargs)
        for field_name in self.fields:
            field = self.fields.get(field_name)
            field.required = False