import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // This will store the selected answers
  var activeScreen =
      'start-screen'; // This variable will be used to switch between the screens

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  } // This function will be called when the button is presseds

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = []; // This will reset the selected answers
        activeScreen =
            'result-screen'; // This will switch to the result screen when all questions are answered
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      switchScreen,
    ); // This will show the StartScreen by default
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } // This will show the QuestionsScreen when the button is pressed

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(choosenAnswers: selectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(33, 150, 243, 1),
                const Color.fromRGBO(10, 58, 97, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
