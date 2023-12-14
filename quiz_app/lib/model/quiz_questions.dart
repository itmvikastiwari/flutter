class QuizQuestions {
  late String question;
  late List<String> ans;

  late String correctAns;

  QuizQuestions(String question, List<String> ans,String correctAns) {
    this.question = question;
    this.ans = ans;
    this.correctAns = correctAns;
  }

  List<String> getShuffledList() {
    final List<String> e = List.of(ans);
    e.shuffle();
    return e;
  }
}
