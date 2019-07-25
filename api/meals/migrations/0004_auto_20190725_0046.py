# Generated by Django 2.2.3 on 2019-07-25 00:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('meals', '0003_auto_20190725_0042'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='ingredient',
            name='meals',
        ),
        migrations.AddField(
            model_name='meal',
            name='ingredients',
            field=models.ManyToManyField(to='meals.Ingredient'),
        ),
    ]