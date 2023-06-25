import 'package:flutter/material.dart';
import 'package:projectzero/gradient_container.dart';

void main() {
  //String finalString = "Hello Hussein";
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(usedColors: [
        Color.fromARGB(255, 44, 1, 112),
        Color.fromARGB(255, 9, 0, 24)
      ])),
    ),
  );
}
