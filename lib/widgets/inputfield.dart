import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.controller,
    required this.inputHint,
    required this.obscureText,
    required this.keyboardType,
  }) : super(key: key);

  final TextEditingController? controller;
  final String inputHint;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      //textAlign: TextAlign.center,
      //cursorColor: Colors.black,
      //style: const TextStyle(color: Colors.white,),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder( //decoration on the active textfield
          borderSide: BorderSide(color: Color.fromARGB(255, 56, 42, 255))
        ),
        enabledBorder: const OutlineInputBorder( //decoration on the inactive textfield
          borderSide: BorderSide(color: Colors.black)
        ),
        border: const OutlineInputBorder(),
        labelText: inputHint,
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 75, 73, 73),
        ),
      ),
    );
  }
}
