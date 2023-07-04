import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onStoreAnswers, super.key});
  final void Function(String answer) onStoreAnswers;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}
//rgb(54, 48, 98)

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionsCounter = 0;
  void choseAnswer(String selectedAnswer) {
    widget.onStoreAnswers(selectedAnswer);
    setState(() {
      questionsCounter += 1;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[questionsCounter];
    return Container(
      margin: const EdgeInsets.all(50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.acme(
                fontSize: 18,
                color: Color.fromARGB(255, 54, 45, 45),
                //fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffled().map((item) {
              return AnswerButton(
                text: item,
                onTap: () {
                  choseAnswer(item);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
