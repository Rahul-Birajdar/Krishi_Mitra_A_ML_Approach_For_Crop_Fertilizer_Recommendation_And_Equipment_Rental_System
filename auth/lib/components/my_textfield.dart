import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const MyTextField({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black), // Black text color
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black54), // Slightly lighter black hint text
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Black border
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Black border when not focused
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1), // Thicker black border when focused
        ),
      ),
      validator: validator,
    );
  }
}
