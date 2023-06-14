import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/quiz-logo.png',
      height: 200,
      color: const Color.fromARGB(89, 255, 255, 255),
    );
  }
}
