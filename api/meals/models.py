from django.db import models

# Create your models here.
class Ingredient(models.Model):
    def __str__(self):
        return self.name

    name = models.CharField(max_length=100, default='')
    quantity = models.CharField(max_length=50, default='')

class Meal(models.Model):
    def __str__(self):
        return self.name

    name = models.CharField(max_length=200, default='')
    requiresFruit = models.BooleanField(blank=True, default=False)
    link = models.TextField(default='')
    calories = models.IntegerField(default=None)
    servings = models.IntegerField(default=None)

    BREAKFAST = 'BREAKFAST'
    GENERIC = 'GENERIC'
    TYPE_MEAL_CHOICES = [
        (BREAKFAST, 'Breakfast'),
        (GENERIC, 'Generic')
    ]
    typeMeal = models.CharField(
        max_length=100, choices=TYPE_MEAL_CHOICES, default=GENERIC)
    ingredients = models.ManyToManyField(Ingredient)


