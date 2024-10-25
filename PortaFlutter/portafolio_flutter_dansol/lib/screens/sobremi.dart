import 'package:flutter/material.dart';

class Sobremi extends StatefulWidget {
  const Sobremi({super.key});

  @override
  State<Sobremi> createState() => _SobremiState();
}

class _SobremiState extends State<Sobremi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Sobre Mi", style: TextStyle(color: Colors.grey[200], fontSize: 30, fontWeight: FontWeight.bold,),
      ),
      body: const Text("Daniel"),
      backgroundColor: Colors.grey[900],
    );
  }
}
