import graphene  
from graphene_django.types import DjangoObjectType, ObjectType  
from backend.mealCalendarApi.meals.models import Meal

# Create a GraphQL type for the actor model
class MealType(DjangoObjectType):  
    class Meta:
        model = Meal

class Query(ObjectType):  
    meal = graphene.Field(MealType, id=graphene.Int())
    meals = graphene.List(MealType)

    def resolve_actor(self, info, **kwargs):
        id = kwargs.get('id')

        if id is not None:
            return Actor.objects.get(pk=id)

        return None

    def resolve_movie(self, info, **kwargs):
        id = kwargs.get('id')

        if id is not None:
            return Movie.objects.get(pk=id)

        return None

    def resolve_actors(self, info, **kwargs):
        return Actor.objects.all()

    def resolve_movies(self, info, **kwargs):
        return Movie.objects.all()