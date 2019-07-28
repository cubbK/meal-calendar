from django.db import models

# Create your models here.


class Ingredient(models.Model):
    def __str__(self):
        return self.name

    name = models.CharField(max_length=100, default='')


class CommonItem(models.Model):
    name = models.CharField(max_length=200, default='')

    def __str__(self):
        return self.name


class Meal(models.Model):
    def __str__(self):
        return self.name

    name = models.CharField(max_length=200, default='')
    requiresFruit = models.BooleanField(default=False)
    link = models.TextField(default='')
    calories = models.IntegerField(default=None)

    BREAKFAST = 'BREAKFAST'
    GENERIC = 'GENERIC'
    TYPE_MEAL_CHOICES = [
        (BREAKFAST, 'Breakfast'),
        (GENERIC, 'Generic')
    ]
    typeMeal = models.CharField(
        max_length=100, choices=TYPE_MEAL_CHOICES, default=GENERIC)
    ingredients = models.ManyToManyField(Ingredient, through='Membership')

    commonItems = models.ManyToManyField(CommonItem)


class Membership(models.Model):
    meal = models.ForeignKey(Meal, on_delete=models.CASCADE)
    ingredient = models.ForeignKey(Ingredient, on_delete=models.CASCADE)
    quantity = models.CharField(max_length=200, default='')
