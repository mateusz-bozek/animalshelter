from django.urls import path

from shelter.views import HomepageView

app_name = 'shelter'

urlpatterns = [
    path('', HomepageView.as_view(), name='homepage'),
]
