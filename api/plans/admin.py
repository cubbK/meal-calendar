from django.contrib import admin
from plans.models import DayPlan, WeekPlan
# Register your models here.

admin.site.register(DayPlan)
admin.site.register(WeekPlan)