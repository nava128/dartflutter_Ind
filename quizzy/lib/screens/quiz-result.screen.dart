import 'package:flutter/material.dart';
import 'package:quizzy/components/quiz-bar.component.dart';
import 'package:quizzy/services/question-answer.service.dart';
import 'package:quizzy/services/quiz-master.service.dart';
import 'package:quizzy/styles.dart';

class QuizResult extends StatelessWidget {
  final QuizMaster quizMaster;

  QuizResult(this.quizMaster);

  Widget createResultCoumn(){
    return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
                quizMaster.questions.map((q) => QuestionResult(q)).toList(),
          );
  }

  Widget createResultList(){
    return ListView(
      children: quizMaster.questions.map((q) => QuestionResult(q)).toList(),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    print('quizMaster:$quizMaster');
    return Scaffold(
      appBar: QuizBar.build(context),
      body: createResultList(),
      
    );
  }
}

class QuestionResult extends StatelessWidget {
  final QuestionAnswer qa;
  QuestionResult(this.qa);

  Widget getWrongAnswer(){
    if (qa.isAnswered && !qa.isCorrect){
      return Text(
              qa.choices[qa.userChoice],
              style: TextStyle(
                fontSize: 30,
                color: kErrorColor,
                decoration: TextDecoration.lineThrough,
                
              ));
    }
    else
      return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    //var wrongAnswer=this.getWrongAnswer();
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(qa.question,
                style: TextStyle(
                  fontSize: 25,
                )),
                SizedBox(height: 10,),
                getWrongAnswer(),
            Text(
              qa.choices[qa.correctChoice],
              style: TextStyle(
                fontSize: 30,
                color: kSuccessColor,
              ),
              
            ),
            
          ],
        ),
      ),
    );
  }
}
