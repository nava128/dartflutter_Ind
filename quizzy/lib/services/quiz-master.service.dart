import 'question-answer.service.dart';

class QuizMaster{

  List<QuestionAnswer> _questions=[];
  int _correct=0;
  int _incorrect=0;
  //int _attempted=0;


  void addQuestion(QuestionAnswer qa){
    _questions.add(qa);
  }



  void answer(int questionNumber, int choiceNumber){
    var qa= _questions[questionNumber];

    if(! qa.isAnswered){
      qa.answer(choiceNumber);
      if(qa.isCorrect){
        _correct++;
      } else {
        _incorrect++;
      }
      //_attempted++;
    }

  }

  QuestionAnswer get(int index){
    return _questions[index];
  }

  int get total=> _questions.length;

  int get attempted=> _correct+_incorrect;

  int get correct=> _correct;

  int get incorrect =>_incorrect;

  bool get isOver=> attempted== total;

  List<QuestionAnswer> get questions=>_questions;

  void reset(){
    for(var qa in _questions)
      qa.answer(null);

    _correct=0;
    _incorrect=0;
   // _attempted=0;
  }







}