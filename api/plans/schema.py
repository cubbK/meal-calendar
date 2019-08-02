import graphene
import plans.services
from graphene_django.types import DjangoObjectType

from plans.models import DayPlan, WeekPlan


class WeekPlanType(DjangoObjectType):
    class Meta:
        model = WeekPlan



class Query(object):
    all_week_plans = graphene.List(WeekPlanType)

    def resolve_all_week_plans(self, info, **kwargs):
        return WeekPlan.objects.all()

class GenerateWeekPlan(graphene.Mutation):
    class Arguments:
        pass
    
    week_plan = graphene.Field(WeekPlanType)

    def mutate(self, info):
        return plans.services.generate_week_plan()

class Mutation(graphene.ObjectType):
    generate_week_plan = GenerateWeekPlan.Field()
