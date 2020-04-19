from datetime import datetime

from django.db import models

ANIMAL_TYPE_CHOICES = (
    ('dog', 'Pies'),
    ('cat', 'Kot'),
    ('other', 'Inny')
)


class Animal(models.Model):
    name = models.CharField(max_length=64)
    type = models.CharField(max_length=16, default='other', choices=ANIMAL_TYPE_CHOICES)
    race = models.CharField(max_length=128)
    photo = models.ImageField(upload_to='animals')
    description = models.TextField(null=True)
    age = models.IntegerField(null=True)
    date_since = models.DateField(null=True)
    points = models.IntegerField(default=0)

    @property
    def days(self):
        date_now = datetime.now().date()
        return (date_now - self.date_since).days


MESSAGE_STATUS = (
    (0, 'Unread'),
    (1, 'Read'),
    (2, 'Responded'),
)


class Message(models.Model):
    name = models.CharField(max_length=64)
    email = models.EmailField(max_length=128)
    subject = models.CharField(max_length=128)
    message = models.TextField()
    status = models.IntegerField(default=0, choices=MESSAGE_STATUS)
    date = models.DateTimeField(auto_now_add=True)


SUBMISSION_STATUS = (
    (0, 'Awaiting'),
    (1, 'Accepted'),
    (2, 'Declined'),
)


class Submission(models.Model):
    name = models.CharField(max_length=64)
    type = models.CharField(max_length=16, default='other', choices=ANIMAL_TYPE_CHOICES)
    race = models.CharField(max_length=128)
    photo = models.ImageField(upload_to='submissions')
    description = models.TextField(null=True)
    age = models.IntegerField(null=True)
    submission_date = models.DateTimeField(auto_now_add=True)
    status = models.IntegerField(default=0, choices=SUBMISSION_STATUS)
