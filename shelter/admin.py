from django.contrib import admin

from shelter.models import Message, Animal, Submission

#admin.site.register(Message)
#admin.site.register(Animal)
#admin.site.register(Submission)

@admin.register(Animal)
class AnimalAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'type', 'race')

@admin.register(Message)
class AnimalAdmin(admin.ModelAdmin):
    list_display = ('name', 'subject')

@admin.register(Submission)
class AnimalAdmin(admin.ModelAdmin):
    list_display = ('status', 'name', 'type', 'race')