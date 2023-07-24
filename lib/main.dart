import 'package:tarea4_pantalla_login/src/shared/constantes.dart';
import 'package:tarea4_pantalla_login/src/shared/not_found.dart';
import 'package:tarea4_pantalla_login/src/shared/rutas.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      initialRoute: Rutas.inicio.name,
      routes: rutas,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return const NotFound();
        });
      },
    );
  }
}
