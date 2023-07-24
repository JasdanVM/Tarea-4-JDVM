import 'package:flutter/material.dart';
import 'package:tarea4_pantalla_login/src/shared/constantes.dart';
// import 'package:tarea4_pantalla_login/src/shared/rutas.dart';
import '../widgets/input_form.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final usuarioController = TextEditingController();
  final contraseniaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Login'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
            width: double.infinity,
            child: Image(
                  image: AssetImage('assets/logo-unah-vs-github.jpg'),
                  width: 100,
                  fit: BoxFit.cover,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InputForm(
                      label: 'Ingrese su Usuario',
                      icon: Icons.person,
                      controller: usuarioController,
                      validator: (value) {
                        if (value!= 'jasonmejia@unah.hn') {
                          return 'Acceso inválido. Por favor, inténtelo otra vez.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InputForm(
                      label: 'Ingrese su contraseña',
                      icon: Icons.password,
                      obscureText: true,
                      mostrarBoton: true,
                      controller: contraseniaController,
                      validator: (value) {
                        if (value!= '20212000937') {
                          return 'Acceso inválido. Por favor, inténtelo otra vez.';
                        }
                        return null;
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                getInputValue(context);
              }, 
              child: const Icon(Icons.plus_one)
            ),
          ],
        ),
          
        ),
      );
  }

  getInputValue(BuildContext context) {

    if (formKey.currentState!.validate()) {
      final data = {
        'usuario': usuarioController.text,
        'contrasenia': contraseniaController.text,
      };
      Navigator.pushNamed(context, Rutas.pantallaBienvenida.name);
      print(data);
    }
  }
}
