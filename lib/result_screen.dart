import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Answer Here'),
            SizedBox(height: 30),
            Text('Result Here'),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
