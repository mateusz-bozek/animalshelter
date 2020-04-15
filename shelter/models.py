from django.db import models

ANIMAL_TYPE_CHOICES = (
    (0, 'Pies'),
    (1, 'Kot'),
    (2, 'Inny')
)


class Animal(models.Model):
    name = models.CharField(max_length=64)
    type = models.IntegerField(default=2, choices=ANIMAL_TYPE_CHOICES)
    race = models.CharField(max_length=128)
    picture_link = models.CharField(max_length=255)
    description = models.TextField(null=True)
    age = models.IntegerField(null=True)
    date_since = models.DateField(null=True)
    points = models.IntegerField(default=0)


class Contact(models.Model):
    name = models.CharField(max_length=64)
    email = models.EmailField(max_length=128)
    subject = models.CharField(max_length=128)
    message = models.TextField()


SUBMISSION_STATUS = (
    (0, 'Awaiting'),
    (1, 'Accepted'),
    (2, 'Declined'),
)


class Submission(models.Model):
    name = models.CharField(max_length=64)
    type = models.IntegerField(default=2, choices=ANIMAL_TYPE_CHOICES)
    race = models.CharField(max_length=128)
    picture_link = models.CharField(max_length=255)
    description = models.TextField(null=True)
    age = models.IntegerField(null=True)
    submission_date = models.DateTimeField(auto_now_add=True)
    status = models.IntegerField(default=0, choices=SUBMISSION_STATUS)
