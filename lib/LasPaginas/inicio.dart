import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agencia de Carros"), backgroundColor: Colors.grey[300]),
      drawer: const DrawerMenu(),
      body: Center(child: Text("Bienvenido a la Agencia", style: TextStyle(fontSize: 20))),
    );
  }
}