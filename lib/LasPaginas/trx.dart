import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class TrxPage extends StatelessWidget {
  const TrxPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agencia de Carros"), backgroundColor: Colors.grey[300]),
      drawer: const DrawerMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://raw.githubusercontent.com/GarciaValenciaJulian0498/UII_Act3_Drawer_Rutas_Nom498/refs/heads/main/carros/trx1.jpg", width: 200, height: 200),
            const Text("TRX", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text("\$7,000,000", style: TextStyle(fontSize: 20, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}