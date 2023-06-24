import 'package:flutter/material.dart';

void main() {
  //String finalString = "Hello Hussein";
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 44, 1, 112),
                Color.fromARGB(255, 9, 0, 24)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: const Center(
            child: Text(
              "Hello Hussein",
              style: TextStyle(
                color: Color.fromARGB(255, 11, 11, 11),
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
