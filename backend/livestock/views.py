from rest_framework import viewsets
from .models import Livestock, Treatment, Notification
from .serializers import (
    LivestockSerializer,
    TreatmentSerializer,
    NotificationSerializer,
)


class LivestockViewSet(viewsets.ModelViewSet):
    queryset = Livestock.objects.all()
    serializer_class = LivestockSerializer


class TreatmentViewSet(viewsets.ModelViewSet):
    queryset = Treatment.objects.all()
    serializer_class = TreatmentSerializer


class NotificationViewSet(viewsets.ModelViewSet):
    queryset = Notification.objects.all()
    serializer_class = NotificationSerializer