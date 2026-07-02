import 'package:flutter/material.dart';

class LivestockScreen extends StatelessWidget {
  const LivestockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final livestock = [
      {
        "tag": "COW001",
        "breed": "Holstein",
        "age": "4 Years",
      },
      {
        "tag": "COW002",
        "breed": "Jersey",
        "age": "3 Years",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Livestock"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: livestock.length,
        itemBuilder: (context, index) {
          final animal = livestock[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.pets),
              ),
              title: Text(animal["tag"]!),
              subtitle: Text(
                "${animal["breed"]} • ${animal["age"]}",
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }
}