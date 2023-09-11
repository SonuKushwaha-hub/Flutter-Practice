class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getSuffledAnswers() {
    final suffledAnswers = List.of(answers);
    suffledAnswers.shuffle();
    return suffledAnswers;
  }
}
