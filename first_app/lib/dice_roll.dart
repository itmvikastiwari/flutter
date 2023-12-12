
import 'dart:math';

import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';
var randomizer = Random();
class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});


  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{

  var currentDiceRoll = 1;


  void rollDice() {
    var diceRoll= randomizer.nextInt(6) + 1;
    setState(() {
      currentDiceRoll = diceRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDiceRoll.png", width: 200),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              // backgroundColor: Colors.blue, // Change background color here
              side: const BorderSide(color: Colors.black),
            ),
            child: const StyleText("Roll Dice")
        )
      ],
    );
  }

}