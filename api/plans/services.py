import random
from meals.models import Meal
from plans.models import DayPlan, WeekPlan

# 4 general meals and 2 breakfasts


def generate_week_plan():
    week_plan = WeekPlan()

    MEAL_COUNT = 4
    BREAKFAST_COUNT = 2

    all_meals = Meal.objects.filter(type_meal="Generic")
    all_breakfasts = Meal.objects.filter(type_meal="Breakfast")

    meals = random.sample(list(all_meals), k=MEAL_COUNT)
    breakfasts = random.sample(list(all_breakfasts), k=BREAKFAST_COUNT)
    
    

    print(meals)
    return WeekPlan()


def generate_day_plan():
    pass
