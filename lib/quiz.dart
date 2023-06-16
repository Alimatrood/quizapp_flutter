import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'home_screen.dart';
import 'questions_screen.dart';
import 'package:quizz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'start-screen';

  void changeScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screens';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(changeScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    } else if (activeScreen == 'result-screens') {
      screenWidget = ResultsScreen(
        selectedAnswers,
      );
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Container(
          decoration: const BoxDecoration(
              gradient: RadialGradient(colors: [
            Color.fromARGB(255, 37, 62, 255),
            Colors.blue,
            Color.fromARGB(255, 112, 122, 255)
          ])),
          child: screenWidget),
    );
  }
}
