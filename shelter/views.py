from django.shortcuts import render, redirect
from django.views import View


class HomepageView(View):
    def get(self, request):
        return render(request, 'homepage.html')


class RedirectHomepageView(View):
    def get(self, request):
        return redirect('shelter:homepage')
