from rest_framework import serializers
from .models import Livestock, Treatment, Notification


class LivestockSerializer(serializers.ModelSerializer):
    class Meta:
        model = Livestock
        fields = "__all__"


class TreatmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Treatment
        fields = "__all__"


class NotificationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notification
        fields = "__all__"