import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projectzero/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-1.png';
  int btnText = 0;
  void roller() {
    /*var diceFaces = [
      'assets/images/dice-1.png',
      'assets/images/dice-2.png',
      'assets/images/dice-3.png',
      'assets/images/dice-4.png',
      'assets/images/dice-5.png',
      'assets/images/dice-6.png'
    ];*/

    setState(
      () {
        var diceFace = randomizer.nextInt(6) + 1;
        diceImage = 'assets/images/dice-$diceFace.png';
        btnText++;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min, //--> takes minimum space Vertically
      children: [
        Image.asset(
          diceImage,
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 80, 159, 12),
          ),
          onPressed: roller,
          child: StyledText("$btnText"),
        )
      ],
    );
  }
}
