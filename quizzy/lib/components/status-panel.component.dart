import 'package:flutter/material.dart';
import 'package:quizzy/services/question-answer.service.dart';
import 'package:quizzy/services/quiz-master.service.dart';
import 'package:quizzy/styles.dart';

class StatusPanel extends StatelessWidget {

  QuizMaster quizMaster;
  StatusPanel(this.quizMaster);

  Widget buildIcon(QuestionAnswer qa){

    Color color= kNotAnsweredColor;
    IconData icon=kNotAnsweredIcon;

    if(qa.isAnswered){
      color= qa.isCorrect? kSuccessColor:kErrorColor;
      icon=qa.isCorrect? kCorrectIcon:kIncorrectIcon;
    }


    return Icon(
      icon,
      color: color,
      size: kStatusIconSize,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        children: quizMaster.questions.map( buildIcon ).toList(),
      ),
    );
  }
}
