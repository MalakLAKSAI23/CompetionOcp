import 'package:flutter/material.dart';

class InputView extends StatelessWidget {
  const InputView({super.key, required this.hint, required this.keyboardType, required this.controller, this.validator});
  final String hint;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        decoration: InputDecoration(
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
        validator: validator,
        controller:controller,


      );
  }
}
