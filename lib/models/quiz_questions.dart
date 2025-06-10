class QuizQuestion {
  QuizQuestion(this.question, this.answer);

  final String question;
  final List<String> answer;

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer); // Create a copy of the list
    shuffledList.shuffle(); // Shuffle the list in place
    return shuffledList; // Return the shuffled list
  }
}
