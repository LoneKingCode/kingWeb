from django import template

register = template.Library()

#{{dicts | get_value : "key1"}}
@register.filter
def get_value(mydict,key_name):
    assert(isinstance(mydict,dict))
    try:
        return mydict[key_name]
    except KeyError:
        return mydict

 #{{ article_info|get_attr:"id" }}
@register.filter
def get_attr(d, m):
    if hasattr(d, m):
         return getattr(d, m)