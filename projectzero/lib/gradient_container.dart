import 'package:flutter/material.dart';
import 'package:projectzero/rollin.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.usedColors}); //---> required ensures that the argument must be passed and not assigned to null

  final List<Color> usedColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: usedColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
