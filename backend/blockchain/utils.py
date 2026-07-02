from .blockchain import blockchain


def create_treatment_transaction(treatment):

    data = {
        "livestock": treatment.livestock.tag_number,
        "medicine": treatment.medicine,
        "dosage": treatment.dosage,
        "date": str(treatment.treatment_date),
        "vet": treatment.veterinarian,
    }

    return blockchain.add_block(data)