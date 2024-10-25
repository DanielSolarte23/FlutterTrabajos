import 'package:flutter/material.dart';

void main() => runApp(const ElevatedButtonExampleApp());

class ElevatedButtonExampleApp extends StatelessWidget {
  const ElevatedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ElevatedButton Sample')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatelessWidget {
  const ElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {

        },
        child: const Text('Presiona aquí'),
      ),
    );
  }
}

