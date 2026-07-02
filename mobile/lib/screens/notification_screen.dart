import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      "Withdrawal period for COW001 ends on 17 Jul 2026.",
      "Treatment recorded successfully.",
      "Blockchain hash generated successfully.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 14),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              title: Text(notifications[index]),
            ),
          );
        },
      ),
    );
  }
}