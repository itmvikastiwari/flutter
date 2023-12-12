import 'package:first_app/dice_roll.dart';
import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment),
        ),
        // child: const Center(child: StyleText("Need to build notes app"))
        child: const Center(
            child: DiceRoller()
        )
    );
  }
}
