import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: startQuiz,
      label: const Text(
        'Start Quiz',
        style: TextStyle(color: Colors.white),
      ),
      icon: const Icon(
        Icons.arrow_right_alt_outlined,
        color: Colors.white,
      ),
    );
  }
}
