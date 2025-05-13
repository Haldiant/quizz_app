class QuizQuestion {
  QuizQuestion(this.questions, this.answer);

  final String questions;
  final List<String> answer;

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer); // Create a copy of the list
    shuffledList.shuffle(); // Shuffle the list in place
    return shuffledList; // Return the shuffled list
  }
}
