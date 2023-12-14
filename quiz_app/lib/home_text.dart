import 'package:flutter/material.dart';

class HomeText extends StatelessWidget{
  const HomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
        "Take the quiz",
        style: TextStyle(color: Colors.white,fontSize: 30)
    );
  }

}