import 'package:epasal/dice_roller.dart';
import 'package:flutter/material.dart';

class GardientContainer extends StatelessWidget {
  const GardientContainer(this.color1, this.color2, {super.key});
  const GardientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 201, 51, 227),
        color2 = const Color.fromARGB(255, 76, 9, 88);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
