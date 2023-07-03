import 'package:flutter/material.dart';

class IndexDecoration extends StatelessWidget {
  const IndexDecoration(
      {super.key, required this.questionIndex, required this.isCorrect});
  final bool isCorrect;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    var indexColor = const Color.fromARGB(255, 225, 13, 13);

    if (isCorrect) {
      indexColor = const Color.fromARGB(255, 13, 126, 225);
    }
    return Container(
      alignment: Alignment.center,
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: indexColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        (questionIndex).toString(),
      ),
    );
  }
}
