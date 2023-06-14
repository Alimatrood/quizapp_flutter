import 'package:flutter/material.dart';
import 'image_component.dart';
import 'title_component.dart';
import 'start_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ImageComponent(),
        const SizedBox(
          height: 40,
        ),
        const TitleComponent('Learn Flutter the fun way!'),
        const SizedBox(
          height: 40,
        ),
        StartButton(startQuiz),
      ],
    );
  }
}
