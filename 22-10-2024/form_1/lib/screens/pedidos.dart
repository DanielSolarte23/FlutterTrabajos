import 'package:flutter/material.dart';

class pedidos extends StatefulWidget {
  const pedidos({super.key});

  @override
  State<pedidos> createState() => _pedidosState();
}

class _pedidosState extends State<pedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de pedidos")),
      body: ListView.builder(
        itemCount: listaDePedidos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(listaDePedidos[index]["nombreCliente"]),
            subtitle: Text(listaDePedidos[index]["descripcion"]),
            leading: Text(listaDePedidos[index]["fechaEntrega"]),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> listaDePedidos = [
  {
    'numeroPedido': 1001,
    'nombreCliente': 'Juan Pérez',
    'descripcion': 'Camiseta de fútbol',
    'cantidad': 3,
    'fechaEntrega': '2024-10-22'
  },
  {
    'numeroPedido': 1002,
    'nombreCliente': 'María Gómez',
    'descripcion': 'Zapatos deportivos',
    'cantidad': 2,
    'fechaEntrega': '2024-10-23'
  },
  {
    'numeroPedido': 1003,
    'nombreCliente': 'Carlos López',
    'descripcion': 'Balón de fútbol',
    'cantidad': 1,
    'fechaEntrega': '2024-10-24'
  },
  {
    'numeroPedido': 1004,
    'nombreCliente': 'Ana Torres',
    'descripcion': 'Sudadera',
    'cantidad': 4,
    'fechaEntrega': '2024-10-25'
  },
  {
    'numeroPedido': 1005,
    'nombreCliente': 'Luis Martínez',
    'descripcion': 'Guantes de portero',
    'cantidad': 2,
    'fechaEntrega': '2024-10-26'
  },
  {
    'numeroPedido': 1006,
    'nombreCliente': 'Laura Fernández',
    'descripcion': 'Gorra deportiva',
    'cantidad': 5,
    'fechaEntrega': '2024-10-27'
  },
  {
    'numeroPedido': 1007,
    'nombreCliente': 'Pedro Sánchez',
    'descripcion': 'Botines de fútbol',
    'cantidad': 1,
    'fechaEntrega': '2024-10-28'
  },
  {
    'numeroPedido': 1008,
    'nombreCliente': 'Gloria Ramírez',
    'descripcion': 'Chaqueta impermeable',
    'cantidad': 3,
    'fechaEntrega': '2024-10-29'
  },
  {
    'numeroPedido': 1009,
    'nombreCliente': 'Andrés Castro',
    'descripcion': 'Reloj deportivo',
    'cantidad': 2,
    'fechaEntrega': '2024-10-30'
  },
  {
    'numeroPedido': 1010,
    'nombreCliente': 'Claudia Ruiz',
    'descripcion': 'Pantalones de running',
    'cantidad': 4,
    'fechaEntrega': '2024-10-31'
  }
];
