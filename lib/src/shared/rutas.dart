import 'package:tarea4_pantalla_login/src/pages/bienvenida_screen.dart';

import '../pages/login_screen.dart';
import 'constantes.dart';

final rutas = {
  Rutas.inicio.name: (context) => LoginScreen(),
  Rutas.pantallaBienvenida.name: (context) => const BienvenidaScreen(),
};
