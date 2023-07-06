import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:quiz_app/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz_logo.png',
          height: 300,
          width: 300,
          //color: Color.fromARGB(49, 255, 255, 255),
        ),
        const SizedBox(
          height: 70,
        ),
        Text(
          "Stop There it's Time For A Quiz",
          textAlign: TextAlign.center,
          style: GoogleFonts.martianMono(
            color: const Color.fromARGB(255, 61, 53, 53),
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: startQuiz,
          icon: const Icon(Icons.keyboard_double_arrow_right_outlined),
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}
