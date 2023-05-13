import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();
var currentDice = 1;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDice.png',
        width: 200,
      ), //pixels
      const SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Roll Dice")),
    ]);
  }
}
