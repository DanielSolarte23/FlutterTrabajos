import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Feed Card',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 350,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text(
                        "D",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Daniel Solarte",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 35, 35, 35)),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                  "Un camino tranquilo en el bosque, rodeado de árboles altos y frondosos. Rayos de sol se filtran a través de las ramas, iluminando el sendero. Hojas caídas cubren el suelo mientras una suave brisa mueve ligeramente las ramas, creando una atmósfera serena y pacífica.",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/2/22/Mascota_Am%C3%A9rica_de_Cali.png",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Me Gusta",
                          style: textStyle,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Comentar",
                          style: textStyle,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Compartir",
                          style: textStyle,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
