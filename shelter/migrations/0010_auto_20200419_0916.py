# Generated by Django 3.0.5 on 2020-04-19 09:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shelter', '0009_auto_20200419_0836'),
    ]

    operations = [
        migrations.AlterField(
            model_name='animal',
            name='photo',
            field=models.ImageField(upload_to='animals'),
        ),
        migrations.AlterField(
            model_name='submission',
            name='photo',
            field=models.ImageField(upload_to='submissions'),
        ),
    ]
