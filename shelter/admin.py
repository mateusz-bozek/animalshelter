from django.contrib import admin

from shelter.models import Message, Animal, Submission

admin.site.register(Message)
admin.site.register(Animal)
admin.site.register(Submission)
