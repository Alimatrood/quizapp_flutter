import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((element) {
            return Row(
              children: [
                Text(((element['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(element['question'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(element['user_answer'] as String),
                      Text(element['correct_answer'] as String),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
