import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text,  style: const TextStyle(color: Colors.white, fontSize: 30)));
  }
}
