import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_flutter_dansol/screens/sobremi.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text(
            'Daniel',
            style: GoogleFonts.righteous(
                color: const Color.fromARGB(255, 155, 24, 15),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(
                  "Inicio",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                subtitle: Text(
                  "Inicio de app",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                trailing: const Icon(Icons.arrow_circle_right),
                leading: const Icon(Icons.home),
                iconColor: Colors.grey[300],
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: Text(
                  "Sobre mi",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                subtitle: Text(
                  "Conoce mas sobre mi",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                trailing: const Icon(Icons.arrow_circle_right),
                leading: const Icon(Icons.person),
                iconColor: Colors.grey[300],
                onTap: () {
                                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Sobremi()));
                },
              ),
              const Divider(),
              ListTile(
                title: Text(
                  "Mis habilidades",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                subtitle: Text(
                  "Descubre mis habilidades",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                trailing: const Icon(Icons.arrow_circle_right),
                leading: const Icon(Icons.ad_units),
                iconColor: Colors.grey[300],
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: Text(
                  "Curriculum",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                subtitle: Text(
                  "Conoce mi curriculum",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                trailing: const Icon(Icons.arrow_circle_right),
                leading: const Icon(Icons.book),
                iconColor: Colors.grey[300],
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: Text(
                  "Portafolio",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                subtitle: Text(
                  "Mira mi portafolio",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                trailing: const Icon(Icons.arrow_circle_right),
                leading: const Icon(Icons.pages),
                iconColor: Colors.grey[300],
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: Text(
                  "Contacto",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                subtitle: Text(
                  "Contactame",
                  style: TextStyle(color: Colors.grey[300]),
                ),
                trailing: const Icon(Icons.arrow_circle_right),
                leading: const Icon(Icons.phone),
                iconColor: Colors.grey[300],
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: 950,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://portafoliowebdanielsolarte.netlify.app/img/mountains-art-dark-red-spots-4k_1541971122.jpg",
              ),
              fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
            ),
          ),
          child: Container(
            // Contenedor superpuesto para el degradado
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent, // Color superior (transparente)
                  Colors.grey[900]!, // Color inferior
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Hace el contenedor circular
                    border: Border.all(
                      color: const Color.fromARGB(
                          255, 155, 24, 15), // Color del borde
                      width: 4.0, // Ancho del borde
                    ),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      "https://portafoliowebdanielsolarte.netlify.app/img/perfil.jpg",
                      fit: BoxFit.cover,
                      width: 180, // Ancho del círculo
                      height: 180, // Alto del círculo (debe ser igual al ancho)
                    ),
                  ),
                ),
                Text(
                  "DANIEL SOLARTE",
                  style: GoogleFonts.righteous(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Text(
                  "DESARROLLO MOVIL",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Hace el contenedor circular
                          border: Border.all(
                            color: Colors.white, // Color del borde
                            width: 1.0, // Ancho del borde
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child:
                              const Icon(Icons.facebook, color: Colors.white),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Hace el contenedor circular
                          border: Border.all(
                            color: Colors.white, // Color del borde
                            width: 1.0, // Ancho del borde
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.github,
                            size: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Hace el contenedor circular
                          border: Border.all(
                            color: Colors.white, // Color del borde
                            width: 1.0, // Ancho del borde
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
