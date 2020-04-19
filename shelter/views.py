import random

from django.contrib.auth.mixins import PermissionRequiredMixin
from django.shortcuts import render, redirect
from django.views import View

from shelter.forms import SubmissionForm
from shelter.models import Animal, Message, Submission


class HomepageView(View):
    def get(self, request):
        recent_animals = Animal.objects.all().order_by('-date_since')[:12]

        number1 = random.randint(1, 10)
        number2 = random.randint(1, 10)
        total = number1 + number2
        return render(request, 'homepage.html', {'recent_animals': recent_animals,
                                                 'number1': number1,
                                                 'number2': number2,
                                                 'total': total})

    def post(self, request):
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        message = request.POST.get('message')

        Message.objects.create(
            name=name,
            email=email,
            subject=subject,
            message=message)

        return redirect('shelter:contact')


class ContactView(View):
    def get(self, request):
        return render(request, 'contact.html')


class RedirectHomepageView(View):
    def get(self, request):
        return redirect('shelter:homepage')


class AdminPanelView(View):
    def get(self, request):
        return render(request, 'admin_panel.html')


class AnimalsView(View):
    def get(self, request):
        animals = Animal.objects.all().order_by('name')
        return render(request, 'animals.html', {'recent_animals': animals})


class SubmissionsView(View):
    def get(self, request):
        submissions = Submission.objects.filter(status=1).order_by('-submission_date')
        return render(request, 'submissions.html', {'submissions': submissions})


class NewSubmissionView(View):
    def get(self, request):
        form = SubmissionForm()
        return render(request, 'new_submission.html', {'form': form})

    def post(self, request):
        form = SubmissionForm(request.POST, request.FILES)

        if form.is_valid():
            Submission.objects.create(name=form.cleaned_data['name'],
                                      type=form.cleaned_data['type'],
                                      race=form.cleaned_data['race'],
                                      photo=form.cleaned_data['photo'],
                                      age=form.cleaned_data['age'],
                                      description=form.cleaned_data['description'])
            return redirect('shelter:submissions')
        else:
            return render(request, 'new_submission.html', {'form': form})


class MessagesView(PermissionRequiredMixin, View):
    permission_required = 'shelter.change_message'

    def get(self, request):
        messages = Message.objects.all().order_by('-date')
        return render(request, 'messages.html', {'messages': messages})


class RespondToMessageView(PermissionRequiredMixin, View):
    permission_required = 'shelter.change_message'

    def get(self, request, id):
        message = Message.objects.get(pk=id)
        message.status = 2
        message.save()

        return redirect('shelter:messages')


class UnreadMessageView(PermissionRequiredMixin, View):
    permission_required = 'shelter.change_message'

    def get(self, request, id):
        message = Message.objects.get(pk=id)
        message.status = 0
        message.save()

        return redirect('shelter:messages')


class DeleteMessageView(PermissionRequiredMixin, View):
    permission_required = 'shelter.change_message'

    def get(self, request, id):
        message = Message.objects.get(pk=id)
        message.delete()
        return redirect('shelter:messages')
