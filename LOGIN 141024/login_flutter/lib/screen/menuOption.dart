import 'package:flutter/material.dart';
import 'package:login_flutter/screen/suma.dart';

class menuOption extends StatefulWidget {
  const menuOption({super.key});

  @override
  State<menuOption> createState() => _menuOptionState();
}

class _menuOptionState extends State<menuOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu de opciones",
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          Image.network(
            "https://cdn-icons-png.freepik.com/512/7650/7650833.png",
            height: 250,
            width: 250,
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Text(
                "Suma",
                style: TextStyle(color: Colors.grey),
              ),
              leading: const Icon(Icons.add),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => suma()));
              },
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Text(
                "Calculadora",
                style: TextStyle(color: Colors.grey),
              ),
              leading: const Icon(Icons.calculate),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Text(
                "Registro",
                style: TextStyle(color: Colors.grey),
              ),
              leading: const Icon(Icons.account_circle_sharp),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Text(
                "Login",
                style: TextStyle(color: Colors.grey),
              ),
              leading: const Icon(Icons.add_card_outlined),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[600],
    );
  }
}
