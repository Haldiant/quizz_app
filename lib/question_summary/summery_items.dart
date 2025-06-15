import 'package:flutter/material.dart';
import 'package:quizz_app/question_summary/questions_identifier.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrect = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrect: isCorrect,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                itemData['user_answer'] as String,
                style: TextStyle(color: Colors.red),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
