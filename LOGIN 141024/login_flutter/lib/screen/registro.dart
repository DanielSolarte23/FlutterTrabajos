import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  //Logica del programa
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _correo = TextEditingController();
  final TextEditingController _password = TextEditingController();

  Future<void> _guardarUsuario(String correo, String password) async {
    final varPreferences = await SharedPreferences.getInstance();
    await varPreferences.setString("userCorreo", correo);
    await varPreferences.setString("userPassword", password);
    //mensaje de validacion

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Datos guardados exitosamente')));
  }

  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      _guardarUsuario(_correo.text, _password.text);
      print("Usuario guardado en SharedPreferences");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registro de usuario",
          style: TextStyle(color: Colors.grey[300]),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.grey[300], // Color de los íconos del AppBar
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
              child: Column(
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/138/138659.png",
                height: 120,
                width: 120,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Nombre",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _correo,
                decoration: const InputDecoration(
                  labelText: "Correo",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email no valido";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Confirmar contraseña",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _registerUser();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[400],
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  "Registrarse...",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
