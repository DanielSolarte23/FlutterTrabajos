import 'package:flutter/material.dart';

class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

class _sumaState extends State<suma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Transform.translate(
          offset: const Offset(0, 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://cdn-icons-png.freepik.com/512/8450/8450026.png",
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Sumar", style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Digite los numeros: ",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Primer Numero",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            )
          ],
        ),
      ),backgroundColor: Colors.grey[600],
    );
  }
}
