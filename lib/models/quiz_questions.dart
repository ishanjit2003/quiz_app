class QuizQuestions {
  const QuizQuestions(this.text, this.answer);

  final String text;
  final List<String> answer;

  //mapping doesn't change the main list but shuffling does..that's why storing the shuffled one in different variable and in diff function
  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
