import 'package:flutter/material.dart';
import 'package:basics/dice_roller.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  GradientContainer.purple({super.key})
      : colors = [
          const Color.fromARGB(255, 83, 26, 216),
          const Color.fromARGB(255, 161, 121, 218),
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
