from django.contrib import admin

# Register your models here.
from django.contrib import admin
from meals.models import Meal, Ingredient, CommonItem

admin.site.register(Meal)
admin.site.register(Ingredient)
admin.site.register(CommonItem)
