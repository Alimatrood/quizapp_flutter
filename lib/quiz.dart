import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  String activeScreen = 'start-screen';

  void changeScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(answer) => selectedAnswers.add(answer);

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(changeScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Container(
          decoration: const BoxDecoration(
              gradient: RadialGradient(colors: [
            Color.fromARGB(255, 37, 62, 255),
            Color.fromARGB(255, 112, 122, 255)
          ])),
          child: screenWidget),
    );
  }
}
