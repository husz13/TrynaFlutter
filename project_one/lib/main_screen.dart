import 'package:flutter/material.dart';
import 'package:project_one/changing_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 198, 8, 8),
            Color.fromARGB(255, 141, 8, 198)
          ],
        ),
      ),
      child: const Center(
        child: ChangingScreen(),
      ),
    );
  }
}
