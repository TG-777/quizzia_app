import 'package:flutter/material.dart';
import 'package:quizza_app/views/onboarding_screen.dart';

void main() {
  runApp(const QuizziaApp());
}

class QuizziaApp extends StatelessWidget {
  const QuizziaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Quizzia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.orange,
      ),
      home: const OnboardingPage(),
    );
  }
}
