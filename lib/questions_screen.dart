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

          AnswerButton(answerText: currentQuestion.answer[0], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answer[1], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answer[2], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answer[3], onTap: () {}),
        ],
      ),
    );
  }
}
