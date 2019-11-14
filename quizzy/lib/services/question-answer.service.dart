

class QuestionAnswer {
  String question;
  List<String> choices;
  int correctChoice;
  int userChoice=null;



  QuestionAnswer(this.question, this.choices, this.correctChoice);

  void answer(int userChoice){
    this.userChoice=userChoice;
  }

  bool get  isAnswered => userChoice!=null;

  bool get isCorrect => userChoice!=null && userChoice==correctChoice;

  String get correctAnswer => choices[correctChoice];
}