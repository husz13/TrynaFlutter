import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/summary_screen/summary.dart';

class Results extends StatelessWidget {
  const Results({required this.resultList, required this.onRestart, super.key});
  final List<String> resultList;
  final void Function() onRestart;
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < resultList.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "selected_answer": resultList[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    var summaryData = getSummary();

    final numQuestions = questions.length;
    final numCorrect = summaryData.where((item) {
      return item["selected_answer"] == item["correct_answer"];
    }).length;
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You Got $numCorrect of $numQuestions"),
              const SizedBox(height: 40),
              Summary(summaryList: summaryData),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: onRestart,
                child: const Text("Restart"),
              )
            ],
          ),
        ));
  }
}
