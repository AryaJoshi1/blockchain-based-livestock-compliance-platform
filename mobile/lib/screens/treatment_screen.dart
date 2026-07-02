import 'package:flutter/material.dart';

class TreatmentScreen extends StatefulWidget {
  const TreatmentScreen({super.key});

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {

  final medicineController = TextEditingController();
  final dosageController = TextEditingController();
  final vetController = TextEditingController();

  String selectedAnimal = "COW001";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Treatment"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView(

          children: [

            DropdownButtonFormField<String>(
              value: selectedAnimal,

              decoration: const InputDecoration(
                labelText: "Livestock",
                border: OutlineInputBorder(),
              ),

              items: const [

                DropdownMenuItem(
                  value: "COW001",
                  child: Text("COW001"),
                ),

                DropdownMenuItem(
                  value: "COW002",
                  child: Text("COW002"),
                ),
              ],

              onChanged: (value) {
                setState(() {
                  selectedAnimal = value!;
                });
              },
            ),

            const SizedBox(height: 18),

            TextField(
              controller: medicineController,
              decoration: const InputDecoration(
                labelText: "Medicine",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 18),

            TextField(
              controller: dosageController,
              decoration: const InputDecoration(
                labelText: "Dosage",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 18),

            TextField(
              controller: vetController,
              decoration: const InputDecoration(
                labelText: "Veterinarian",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 55,

              child: ElevatedButton(

                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Treatment submitted successfully!",
                      ),
                    ),
                  );

                  Navigator.pop(context);
                },

                child: const Text(
                  "SUBMIT TREATMENT",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}