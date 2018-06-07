"""
Definition of models.
"""

from django.db import models

# Create your models here.
class book(models.Model):
    class Meta:
        db_table='book'
    bookname = models.CharField(max_length=30)

class department(models.Model):
    name = models.CharField(max_length=30)
    description = models.CharField(max_length=30)