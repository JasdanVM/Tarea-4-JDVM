import 'package:tarea4_pantalla_login/src/pages/bienvenida_screen.dart';

import '../pages/home_page.dart';
import 'constantes.dart';

final rutas = {
  Rutas.inicio.name: (context) => HomePage(),
  Rutas.pantallaBienvenida.name: (context) => const BienvenidaScreen(),
};
