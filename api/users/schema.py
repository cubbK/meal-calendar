from django.contrib.auth import get_user_model

import graphene
from graphene_django import DjangoObjectType
from .models import User

from django.core.validators import validate_email


class UserType(DjangoObjectType):
    class Meta:
        model = get_user_model()


class CreateUser(graphene.Mutation):
    user = graphene.Field(UserType)

    class Arguments:
        password = graphene.String(required=True)
        email = graphene.String(required=True)

    def mutate(self, info, password, email):
        try:
            validate_email(email)
        except:
            raise ValueError('Email is not valid')

        user = get_user_model()(
            email=email,
        )
        user.set_password(password)
        user.save()

        return CreateUser(user=user)


class Mutation(graphene.ObjectType):
    create_user = CreateUser.Field()
