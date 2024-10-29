import 'package:flutter/material.dart';

class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

class _sumaState extends State<suma> {
  // Controladores para los campos de texto
  final TextEditingController _number1 = TextEditingController();
  final TextEditingController _number2 = TextEditingController();
  double _resultado = 0.0;

  void _calcularSuma() {
    double number1 = double.tryParse(_number1.text) ?? 0.0;
    double number2 = double.tryParse(_number2.text) ?? 0.0;

    setState(() {
      _resultado = number1 + number2;
    });
  }

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
              const SizedBox(width: 10),
              Text(
                "Sumar",
                style: TextStyle(color: Colors.grey[400]),
              ),
            ],
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.grey[300], // Color de los íconos del AppBar
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Digite los números:",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _number1,
              decoration: InputDecoration(
                labelText: "Ingrese el primer número",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _number2,
              decoration: InputDecoration(
                labelText: "Ingrese el segundo número",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularSuma,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[500],
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Calcular',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Resultado: ${_resultado % 1 == 0 ? _resultado.toInt() : _resultado}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
