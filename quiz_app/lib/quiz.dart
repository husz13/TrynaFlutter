import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var activeScreen = "start-screen";
  List<String> selectedAnswers = [];

  void storeAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);

  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void restart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = "start-screen";
    });
  }

  @override
  Widget build(context) {
    var screenWidget = (activeScreen == "start-screen")
        ? StartScreen(switchScreen)
        : (activeScreen == "questions-screen")
            ? QuestionsScreen(onStoreAnswers: storeAnswers)
            : Results(resultList: selectedAnswers, onRestart: restart);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(184, 63, 3, 81),
                Color.fromARGB(235, 89, 11, 168)
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
