import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.label, required this.hint, required this.keyboardType, required this.isObscure, required this.validator, required this.prefixIcon, required this.controller});
  final String label;
  final Icon prefixIcon;
  final String hint;
  final TextInputType keyboardType;
  final bool isObscure;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  // final Function(String) onSaved;

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(

        decoration: InputDecoration(
            contentPadding:const EdgeInsets.symmetric(vertical: 15.0),
            prefixIcon:prefixIcon ,
            labelText: label,
            labelStyle:const TextStyle(color: Colors.grey),
            hintText: hint,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color:Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            )
        ),
        keyboardType: keyboardType,
        obscureText: isObscure,
        validator: validator,
        controller:controller,


      );
  }
}
