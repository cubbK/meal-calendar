import graphene
from graphene_django.types import DjangoObjectType

from meals.models import Meal


class MealType(DjangoObjectType):
    class Meta:
        model = Meal



class Query(object):
    all_meals = graphene.List(MealType)

    def resolve_all_meals(self, info, test, **kwargs):
        return Meal.objects.all()