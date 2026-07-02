from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter

from livestock.views import (
    LivestockViewSet,
    TreatmentViewSet,
    NotificationViewSet,
)

router = DefaultRouter()
router.register(r"livestock", LivestockViewSet)
router.register(r"treatments", TreatmentViewSet)
router.register(r"notifications", NotificationViewSet)

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/", include(router.urls)),
]