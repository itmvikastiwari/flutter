import 'package:flutter/material.dart';

class HomeImg extends StatelessWidget {
  const HomeImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/quiz-logo.png",width : 300,color: const Color.fromARGB(150,255,255, 255));
  }
}
