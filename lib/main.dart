import 'package:flutter/material.dart';
import 'LasPaginas/bmw.dart';
import 'LasPaginas/toyota.dart';
import 'LasPaginas/trx_black.dart';
import 'LasPaginas/trx.dart';
import 'LasPaginas/inicio.dart';

void main() => runApp(const AgenciaApp());

class AgenciaApp extends StatelessWidget {
  const AgenciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agencia de Carros',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/bmw': (context) => const BmwPage(),
        '/toyota': (context) => const ToyotaPage(),
        '/trxblack': (context) => const TrxBlackPage(),
        '/trx': (context) => const TrxPage(),
      },
    );
  }
}