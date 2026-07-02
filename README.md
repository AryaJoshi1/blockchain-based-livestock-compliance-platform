# 🐄 Blockchain-Based Livestock Compliance Platform

A full-stack livestock compliance management system developed as part of a Smart India Hackathon (SIH) concept. The platform enables farmers and veterinarians to digitally manage livestock treatments, maintain tamper-evident treatment records using blockchain-inspired hashing, and monitor compliance through a simple mobile application.

---

## 📌 Project Overview

The livestock industry requires accurate record-keeping of animal treatments to ensure food safety and regulatory compliance. This project provides a lightweight digital solution for recording treatments, generating immutable transaction hashes, and maintaining treatment history through a clean mobile interface and a Django backend.

The original SIH concept proposed Hyperledger Fabric-based blockchain integration. For this GitHub implementation, a lightweight SHA-256 blockchain simulation has been implemented to demonstrate immutable transaction recording while keeping the project easy to run locally.

---

## ✨ Features

- 🔐 Blockchain-inspired SHA-256 transaction hashing
- 🐄 Livestock management
- 💉 Treatment recording
- 🔔 Automatic compliance notifications
- 📱 Flutter mobile application
- 🌐 Django REST API backend
- 🗄️ SQLite database (development)
- 👨‍💼 Django Admin dashboard
- 🔄 RESTful API architecture
- 📦 Modular project structure

---

## 🏗️ System Architecture

```
Flutter Mobile App
        │
        ▼
 Django REST API
        │
        ▼
Business Logic
        │
 ┌──────┴────────┐
 │               │
 ▼               ▼
SQLite      Blockchain Simulation
(Database)     (SHA-256)
        │
        ▼
 Notifications
```

---

## 📂 Project Structure

```
livestock-compliance-platform/

├── backend/
│   ├── blockchain/
│   ├── config/
│   ├── livestock/
│   ├── users/
│   ├── manage.py
│   └── requirements.txt
│
├── mobile/
│   ├── android/
│   ├── ios/
│   ├── lib/
│   ├── web/
│   └── pubspec.yaml
│
├── docs/
│
├── README.md
└── LICENSE
```

---

## 📱 Mobile Application

The Flutter application includes:

- Login Screen
- Dashboard
- Livestock Management
- Add Treatment
- Notifications

Designed with a mobile-first approach for farmers and veterinarians.

---

## ⚙️ Backend

The Django backend provides:

- Livestock CRUD
- Treatment CRUD
- Notification Management
- Django Admin
- REST APIs
- Blockchain hash generation

---

## 🔐 Blockchain Simulation

Each treatment record automatically generates a SHA-256 transaction hash.

Example workflow:

```
Treatment Added
        │
        ▼
Generate SHA-256 Hash
        │
        ▼
Store Transaction Hash
        │
        ▼
Generate Notification
```

This provides a lightweight demonstration of immutable transaction recording and can be extended to enterprise blockchain platforms such as Hyperledger Fabric.

---

## 🛠️ Technology Stack

### Mobile

- Flutter
- Dart
- Material 3

### Backend

- Django
- Django REST Framework
- SQLite

### Blockchain

- Python hashlib (SHA-256)

### Development

- Git
- VS Code
- Chrome (Flutter Web)

---

## 🚀 Installation

### Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/livestock-compliance-platform.git

cd livestock-compliance-platform
```

---

### Backend Setup

```bash
cd backend

python3 -m venv .venv

source .venv/bin/activate

pip install -r requirements.txt

python manage.py migrate

python manage.py runserver
```

Backend:

```
http://127.0.0.1:8000
```

Admin:

```
http://127.0.0.1:8000/admin
```

---

### Mobile Setup

```bash
cd mobile

flutter pub get

flutter run -d chrome
```

---

## 🌐 API Endpoints

| Method | Endpoint | Description |
|---------|----------|-------------|
| GET | `/api/livestock/` | List livestock |
| POST | `/api/livestock/` | Add livestock |
| GET | `/api/treatments/` | List treatments |
| POST | `/api/treatments/` | Add treatment |
| GET | `/api/notifications/` | List notifications |

---

## 🔄 Workflow

```
User Login
      │
      ▼
View Livestock
      │
      ▼
Record Treatment
      │
      ▼
Generate Blockchain Hash
      │
      ▼
Store Record
      │
      ▼
Generate Notification
```

---

## 📈 Future Improvements

- Hyperledger Fabric integration
- PostgreSQL production database
- JWT authentication
- Cloud deployment (AWS/Azure)
- Push notifications
- QR code tagging for livestock
- Real-time dashboard analytics

---

## 👨‍💻 Author

**Arya Joshi**

