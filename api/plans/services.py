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

    meals_used_last_day = []
    for i in range(7):
        breakfast = choose_random_meal(breakfasts, meals_used_last_day)
        lunch = choose_random_meal(meals, meals_used_last_day)
        dinner = choose_random_meal(meals, )
        meals_used_last_day = [breakfast, lunch, dinner]
        print(meals_used_last_day)
    return WeekPlan()


def choose_random_meal(meals, meals_to_exclude):
    def filter_meals(meal):
        if meal in meals_to_exclude:
            return False
        else:
            return True
    filtered_meals = list(filter(filter_meals, meals))
    print(filtered_meals)
    return filtered_meals[0]
