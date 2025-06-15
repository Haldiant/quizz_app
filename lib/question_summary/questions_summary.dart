import 'package:flutter/material.dart';
import 'package:quizz_app/question_summary/summery_items.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  Map<String, Object> get itemData => summaryData[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return SummaryItems(data);
              }).toList(),
        ),
      ),
    );
  }
}
