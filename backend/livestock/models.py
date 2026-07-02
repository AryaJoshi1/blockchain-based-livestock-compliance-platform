from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver

from blockchain.utils import create_treatment_transaction


class Livestock(models.Model):
    owner = models.ForeignKey(User, on_delete=models.CASCADE)

    tag_number = models.CharField(max_length=30, unique=True)

    species = models.CharField(max_length=20)

    breed = models.CharField(max_length=50)

    age = models.IntegerField()

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.tag_number


class Treatment(models.Model):

    livestock = models.ForeignKey(Livestock, on_delete=models.CASCADE)

    medicine = models.CharField(max_length=100)

    dosage = models.CharField(max_length=50)

    treatment_date = models.DateField()

    withdrawal_days = models.IntegerField()

    veterinarian = models.CharField(max_length=100)

    blockchain_hash = models.CharField(
        max_length=256,
        blank=True,
    )

    def __str__(self):
        return f"{self.livestock.tag_number} - {self.medicine}"

    def save(self, *args, **kwargs):
        import hashlib
        from datetime import timedelta

        data = (
            f"{self.livestock.tag_number}"
            f"{self.medicine}"
            f"{self.dosage}"
            f"{self.treatment_date}"
        )

        self.blockchain_hash = hashlib.sha256(data.encode()).hexdigest()

        super().save(*args, **kwargs)

        withdrawal_end = self.treatment_date + timedelta(days=self.withdrawal_days)

        Notification.objects.get_or_create(
            livestock=self.livestock,
            message=(
                f"Withdrawal period for "
                f"{self.livestock.tag_number} ends on "
                f"{withdrawal_end.strftime('%d %b %Y')}."
            ),
        )

class Notification(models.Model):

    livestock = models.ForeignKey(Livestock, on_delete=models.CASCADE)

    message = models.TextField()

    is_read = models.BooleanField(default=False)

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.message


@receiver(post_save, sender=Treatment)
def generate_blockchain_hash(sender, instance, created, **kwargs):
    """
    Automatically generate a blockchain transaction hash
    whenever a new treatment record is created.
    """

    if created and not instance.blockchain_hash:

        tx_hash = create_treatment_transaction(instance)

        instance.blockchain_hash = tx_hash

        instance.save(update_fields=["blockchain_hash"])