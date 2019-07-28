from django.contrib import admin

# Register your models here.
from django.contrib import admin
from meals.models import Meal, Ingredient, CommonItem, Membership


class MembershipInline(admin.TabularInline):
    model = Membership
    extra = 1


class MealAdmin(admin.ModelAdmin):
    inlines = (MembershipInline,)


admin.site.register(Meal, MealAdmin)
admin.site.register(Ingredient)
admin.site.register(CommonItem)
