import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.questions,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 40),

          ...currentQuestion.answer.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          }),
        ],
      ),
    );
  }
}
