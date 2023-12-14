
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

  const AnswerButton({super.key, required this.text,required this.onTap});

  final String text;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 45 ,vertical: 10),
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6 ))
        ),
        child: Text(text));
  }

}