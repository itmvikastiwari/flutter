import 'package:flutter/material.dart';

class StartBtn extends StatelessWidget {
  const StartBtn(this.startQuiz, {super.key} );

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: startQuiz,
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        label: const Text("Start Quiz"),
        icon: const Icon(Icons.arrow_right_alt));
  }
}
