from django.contrib import admin
from .models import Livestock, Treatment, Notification

admin.site.register(Livestock)
admin.site.register(Treatment)
admin.site.register(Notification)