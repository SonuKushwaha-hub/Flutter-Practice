import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummearyData() {
    final List<Map<String, Object>> summaryData = [];

    for (int i = 0; i < chosenAnswer.length; i++) {
      summaryData.add(
        {
          "questionIndex": i,
          "question": questions[i].text,
          "correctAnswer": questions[i].answers[0],
          "userAnswer": chosenAnswer[i]
        },
      );
    }

    return summaryData;
  }

  @override
  Widget build(context) {
    final numTotalQuestion = questions.length;
    final summaryData = getSummearyData();
    final numCorrectAnswer = summaryData
        .where((element) => element["userAnswer"] == element["correctAnswer"])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answerd $numCorrectAnswer out of $numTotalQuestion answers correctly!",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(getSummearyData()),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart Quiz!"))
          ],
        ),
      ),
    );
  }
}
