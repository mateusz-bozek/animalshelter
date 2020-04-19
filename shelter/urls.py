from django.urls import path

from shelter.views import HomepageView, AdminPanelView, AnimalsView, SubmissionsView, NewSubmissionView, ContactView, \
    MessagesView, RespondToMessageView, DeleteMessageView, UnreadMessageView

app_name = 'shelter'

urlpatterns = [
    path('', HomepageView.as_view(), name='homepage'),
    path('admin/', AdminPanelView.as_view(), name='admin'),
    path('admin/messages/', MessagesView.as_view(), name='messages'),
    path('admin/messages/respond/<int:id>', RespondToMessageView.as_view(), name='respond_to_message'),
    path('admin/messages/unread/<int:id>', UnreadMessageView.as_view(), name='unread_message'),
    path('admin/messages/delete/<int:id>', DeleteMessageView.as_view(), name='delete_message'),
    path('animals/', AnimalsView.as_view(), name='animals'),
    path('submissions/', SubmissionsView.as_view(), name='submissions'),
    path('new-submission/', NewSubmissionView.as_view(), name='new_submission'),
    path('contact/', ContactView.as_view(), name='contact'),
]
