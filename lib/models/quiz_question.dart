class QuizQuestion {
  const QuizQuestion(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledList() {
    final answersList = List.of(answers);
    answersList.shuffle();
    return answersList;
  }
}
