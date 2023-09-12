import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    children: [
                      Text(((data["questionIndex"] as int) + 1).toString()),
                      Expanded(
                        child: Column(
                          children: [
                            Text(data["question"] as String),
                            const SizedBox(height: 5),
                            Text(data["userAnswer"] as String),
                            Text(data["correctAnswer"] as String),
                          ],
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
