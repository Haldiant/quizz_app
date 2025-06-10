import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestions(String selectedAnswer) {
    widget.onSelectAnswer(
      selectedAnswer,
    ); // This will call the function passed from the parent widget
    // CurrentQuestionIndex = CurrentQuestionIndex + 1;
    // CurrentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++; // This will increment the current question index by 1
    });
  } // This function will be called when the answer is selected

  @override
  Widget build(BuildContext context) {
    final currentQuestion =
        questions[currentQuestionIndex]; // Replace with the logic to get the current question

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.workSans(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ), // This will display the question text
              textAlign: TextAlign.center,
            ), // This will display the question text
            SizedBox(
              height: 40,
            ), // Add some space between the question and the answers

            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestions(answer);
                }, // This will call the answerQuestions function when the button is pressed
              );
            }), // This will create a button for each answer
          ],
        ),
      ),
    );
  }
}
