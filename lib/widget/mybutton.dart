import 'package:flutter/material.dart';

//mon button principale

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Color textColor;

  const MyButton(
      {super.key,
        required this.text,
        required this.color,
        required this.onPressed, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: double.infinity,
        height: 50,
        child:
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            //definir un border radius pour ce btn
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style:TextStyle(
                color: textColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      );
  }
}
