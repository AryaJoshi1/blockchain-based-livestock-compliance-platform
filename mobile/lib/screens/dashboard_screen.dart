import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Widget buildCard(
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Icon(icon, size: 45, color: color),
            const SizedBox(height: 15),
            Text(
              value,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }

  Widget buildButton(
    BuildContext context,
    IconData icon,
    String text,
    String route,
  ) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(text),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("Livestock Compliance"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome, Farmer 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),

            Row(
              children: [
                Expanded(
                  child: buildCard(
                    Icons.pets,
                    "Livestock",
                    "24",
                    Colors.green,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: buildCard(
                    Icons.medication,
                    "Treatments",
                    "6",
                    Colors.orange,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: buildCard(
                    Icons.notifications,
                    "Alerts",
                    "2",
                    Colors.red,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            buildButton(
              context,
              Icons.pets,
              "View Livestock",
              "/livestock",
            ),

            const SizedBox(height: 18),

            buildButton(
              context,
              Icons.medication,
              "Add Treatment",
              "/treatment",
            ),

            const SizedBox(height: 18),

            buildButton(
              context,
              Icons.notifications,
              "Notifications",
              "/notifications",
            ),
          ],
        ),
      ),
    );
  }
}