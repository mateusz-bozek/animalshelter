from django import forms

from shelter.models import ANIMAL_TYPE_CHOICES


class SubmissionForm(forms.Form):
    name = forms.CharField(label='Imię', max_length=64)
    type = forms.ChoiceField(label='Typ', widget=forms.RadioSelect, choices=ANIMAL_TYPE_CHOICES, initial='other')
    race = forms.CharField(label='Rasa', max_length=128)
    age = forms.IntegerField(label='Wiek', min_value=0, required=False)
    description = forms.CharField(label='Opis', widget=forms.Textarea, required=False)
    photo = forms.ImageField()
