import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueAccent),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 250),
            SizedBox(height: 40),
            Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            OutlinedButton(
              onPressed: null,
              child: Text('Mulai Quiz', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
