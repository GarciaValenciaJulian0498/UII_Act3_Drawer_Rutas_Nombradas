import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blueGrey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network('https://raw.githubusercontent.com/GarciaValenciaJulian0498/UII_Act3_Drawer_Rutas_Nombradas/refs/heads/main/carros/logo.png', height: 40),
                const SizedBox(height: 5),
                const Text("Agencia de carros", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text("Cbtis 128", style: TextStyle(color: Colors.white, fontSize: 12)),
                const SizedBox(height: 5),
                const Text("656-123-4567", style: TextStyle(color: Colors.white, fontSize: 12)),
                const SizedBox(height: 5),
                const Text("a.23308051280498@cbtis128.edu.mx", style: TextStyle(color: Colors.white, fontSize: 10)),
              ],
            ),
          ),
          _item(context, Icons.home, "Inicio", '/'),
          _item(context, Icons.directions_car, "BMW M3", '/bmw'),
          _item(context, Icons.directions_car, "Toyota Corolla", '/toyota'),
          _item(context, Icons.directions_car, "TRX BLACK", '/trxblack'),
          _item(context, Icons.directions_car, "TRX", '/trx'),
        ],
      ),
    );
  }

  Widget _item(BuildContext context, IconData icono, String texto, String ruta) {
    return ListTile(
      leading: Icon(icono),
      title: Text(texto),
      onTap: () => Navigator.pushReplacementNamed(context, ruta),
    );
  }
}