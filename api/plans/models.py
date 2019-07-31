from django.db import models
from meals.models import Meal
# Create your models here.


class DayPlan(models.Model):
    breakfast = models.ForeignKey(Meal, on_delete=models.CASCADE, related_name='breakfast')
    lunch = models.ForeignKey(Meal, on_delete=models.CASCADE, related_name='lunch')
    dinner = models.ForeignKey(Meal, on_delete=models.CASCADE, related_name='dinner')


class WeekPlan(models.Model):
    days = models.ForeignKey(DayPlan, on_delete=models.CASCADE)
