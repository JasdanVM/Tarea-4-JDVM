// import 'package:tarea4_pantalla_login/src/shared/constantes.dart';
import 'package:flutter/material.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    const estilo = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
      ),
      body: const Center(
        child: Text('Bienvenido(a)', style: estilo),
      ),
    );
  }
}
