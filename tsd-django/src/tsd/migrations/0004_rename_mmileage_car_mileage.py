# Generated by Django 4.0.10 on 2024-05-14 15:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tsd', '0003_remove_car_mileage_car_mmileage'),
    ]

    operations = [
        migrations.RenameField(
            model_name='car',
            old_name='mmileage',
            new_name='mileage',
        ),
    ]
