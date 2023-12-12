import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  const List<Color> colors = [
    Color.fromARGB(255, 0, 0, 80),
    Color.fromARGB(255, 88, 43, 98)
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Roll Dice App'),
          ),
          body: GradientContainer(
            colors: colors,
          )),
    ),
  );
}
