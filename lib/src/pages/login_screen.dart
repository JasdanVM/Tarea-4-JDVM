
import 'package:flutter/material.dart';
import 'package:tarea4_pantalla_login/src/shared/constantes.dart';
import '../widgets/input_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usuarioController = TextEditingController();
  final contraseniaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Login'),
        centerTitle: true,
      ),
      body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Image(
                          image: AssetImage('assets/logo-unah-vs-github.jpg'),
                    ),
                    height: 200,
                  ),
                  const SizedBox(
                          height: 30,
                        ),
                  Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InputForm(
                          label: 'Ingrese su usuario',
                          icon: Icons.person,
                          controller: usuarioController,
                          validator: (value) {
                            if (value!='jasonmejia@unah.hn') {
                              return '';
                            }

                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InputForm(
                          label: 'Ingrese su contraseña',
                          icon: Icons.password,
                          obscureText: true,
                          mostrarBoton: true,
                          controller: contraseniaController,
                          validator: (value) {
                            if (value!= '20212000937') {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                          height: 20,
                        ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), 
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0), 
                        ),
                      ),
                    ),
                    onPressed: _verifyLogin,
                    child: const Text('Iniciar sesión',style: TextStyle(color: Color.fromARGB(255, 7, 48, 82)),),
                    
                  ),
                  const Spacer(),           
                ],
              ),
            )
      );
  }

  void _verifyLogin() {

    if (formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Rutas.pantallaBienvenida.name);;
    } else {
      _showSnackBar('Acceso inválido. Por favor, inténtelo otra vez.');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
