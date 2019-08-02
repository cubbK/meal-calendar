import graphene
from graphene_django.types import DjangoObjectType

from plans.models import DayPlan, WeekPlan


class WeekPlanType(DjangoObjectType):
    class Meta:
        model = WeekPlan



class Query(object):
    all_week_plans = graphene.List(WeekPlanType)

    def resolve_all_week_plans(self, info, **kwargs):
        return WeekPlan.objects.all()