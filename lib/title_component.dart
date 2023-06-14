import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  const TitleComponent(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.normal),
    );
  }
}
