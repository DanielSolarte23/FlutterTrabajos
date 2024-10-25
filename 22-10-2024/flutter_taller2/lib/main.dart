import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formulario Complejo',
      home: FormComplex(),
    );
  }
}

class FormComplex extends StatefulWidget {
  const FormComplex({super.key});

  @override
  _FormComplexState createState() => _FormComplexState();
}

class _FormComplexState extends State<FormComplex> {
  final _formKey = GlobalKey<FormState>(); // Clave global para el formulario

  String? _nombre;
  String? _correo;
  String? _telefono;
  String? _direccion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario Complejo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Campo de texto para Nombre
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su nombre';
                  }
                  return null;
                },
                onSaved: (value) {
                  _nombre = value;
                },
              ),
              const SizedBox(height: 16),

              // Campo de texto para Correo Electrónico
              TextFormField(
                decoration: const InputDecoration(labelText: 'Correo Electrónico'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su correo electrónico';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Ingrese un correo electrónico válido';
                  }
                  return null;
                },
                onSaved: (value) {
                  _correo = value;
                },
              ),
              const SizedBox(height: 16),

              // Campo de texto para Teléfono
              TextFormField(
                decoration: const InputDecoration(labelText: 'Teléfono'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su número de teléfono';
                  }
                  if (value.length < 10) {
                    return 'El número de teléfono debe tener al menos 10 dígitos';
                  }
                  return null;
                },
                onSaved: (value) {
                  _telefono = value;
                },
              ),
              const SizedBox(height: 16),

              // Campo de texto para Dirección
              TextFormField(
                decoration: const InputDecoration(labelText: 'Dirección'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su dirección';
                  }
                  return null;
                },
                onSaved: (value) {
                  _direccion = value;
                },
              ),
              const SizedBox(height: 20),

              // Botón de Enviar
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save(); // Guarda los valores
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Formulario enviado')),
                    );
                    // Aquí puedes manejar la lógica de envío de datos
                  }
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
