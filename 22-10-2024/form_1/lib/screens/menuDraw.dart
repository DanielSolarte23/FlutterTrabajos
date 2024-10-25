import 'package:flutter/material.dart';
import 'package:form_1/screens/inicioCard.dart';
import 'package:form_1/screens/pedidos.dart';

class Menudrawer extends StatefulWidget {
  const Menudrawer({super.key});

  @override
  State<Menudrawer> createState() => _MenudrawerState();
}

class _MenudrawerState extends State<Menudrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi Aplicación")),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 50,
              margin: const EdgeInsets.only(top: 50, bottom: 10),
              child: const Image(
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/d/da/Am%C3%A9rica_de_Cali.png",
                ),
              ),
            ),
            ListTile(
              title: const Text("Inicio"),
              subtitle: const Text("Descubre nuestros productos"),
              trailing: const Icon(Icons.arrow_circle_right),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Mis Pedidos"),
              subtitle: const Text("Revisa el estado"),
              trailing: const Icon(Icons.arrow_circle_down),
              leading: const Icon(Icons.store),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const pedidos()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Cuenta"),
              subtitle: const Text("Gestiona tus datos"),
              trailing: const Icon(Icons.arrow_circle_right),
              leading: const Icon(Icons.account_circle),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            label: "Contactos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: "Pagos",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
