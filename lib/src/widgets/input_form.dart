import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputForm extends StatefulWidget {
  InputForm({
    super.key,
    required this.label,
    required this.icon,
    this.obscureText = false,
    this.type = TextInputType.text,
    this.mostrarBoton = false,
    required this.controller,
    required this.validator,
  });

  final String label;
  final IconData icon;
  bool obscureText;
  final bool mostrarBoton;
  final TextInputType type;
  final TextEditingController controller;

  final String? Function(String?) validator;

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: const TextStyle(color: Color.fromARGB(255, 8, 75, 129)),
      keyboardType: widget.type,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        label: Text(widget.label),
        prefixIcon: Icon(
          widget.icon,
          color: Color.fromARGB(255, 202, 184, 21),
        ),
        suffixIcon: widget.mostrarBoton
            ? IconButton(
                onPressed: () {
                  widget.obscureText = !widget.obscureText;
                  setState(() {});
                },
                icon: Icon(widget.obscureText
                    ? Icons.remove_red_eye
                    : Icons.visibility_off),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
      validator: widget.validator,
      onChanged: (value) {
        //
      },
    );
  }
}
