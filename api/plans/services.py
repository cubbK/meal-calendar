from meals.models import Meal 
from plans.models import DayPlan, WeekPlan

# 4 general meals and 2 breakfasts
def generate_week_plan():
    week_plan = WeekPlan()

    meals = Meal.objects.filter(typeMeal="Generic")
    breakfasts = Meal.objects.filter(typeMeal="Breakfast")
    print(breakfasts)
    return WeekPlan()

def generate_day_plan():
    pass