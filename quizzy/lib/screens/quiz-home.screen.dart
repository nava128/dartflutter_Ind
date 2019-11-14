import 'package:flutter/material.dart';
//import '../components/quiz-navigation-panel.component.dart';
//import '../components/question-panel.component.dart';
//import '../components/status-panel.component.dart';

import 'package:quizzy/components/quiz-navigation-panel.component.dart';
import 'package:quizzy/components/question-panel.component.dart';
import 'package:quizzy/components/status-panel.component.dart';
import 'package:quizzy/services/question-answer.service.dart';
import 'package:quizzy/services/quiz-data.repository.dart';
import 'package:quizzy/services/quiz-master.service.dart';

class QuizHomeScreen extends StatefulWidget {
  @override
  _QuizHomeScreenState createState() => _QuizHomeScreenState();
}

QuizMaster createQuizMaster(){
  var rep=QuizDataRepository();
  var quizMaster= QuizMaster();
  for(var qa in rep.fetchAll())
    quizMaster.addQuestion(qa);
  print(quizMaster.total);
  return quizMaster;

}



class _QuizHomeScreenState extends State<QuizHomeScreen> {

  QuizMaster quizMaster=createQuizMaster();

  List<QuestionAnswer> questions;
  QuestionAnswer selectedQuestion;
  int selectedQuestionIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedQuestionIndex=0;
    selectedQuestion=quizMaster.get(selectedQuestionIndex);
  }

  void onAnswerSelection(int selectedChoiceIndex){
    //print('user selected $selectedIndex');
    setState(() {
      quizMaster.answer(selectedQuestionIndex, selectedChoiceIndex);
    });

  }

  void changeQuestion(int delta){

    int newValue= selectedQuestionIndex+delta;
    if(newValue>=0 && newValue<quizMaster.total){

      setState(() {
        selectedQuestionIndex=newValue;
        selectedQuestion=quizMaster.get(selectedQuestionIndex);
      });

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:CircleAvatar(
            backgroundImage: AssetImage('images/quiz.jpeg'),
            radius: 30,
        ),
        title: Text('Quizzy'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: NavigationPanel(
            current: selectedQuestionIndex+1,
            total: quizMaster.total,
            change: changeQuestion,
          ),flex: 1,),
          Expanded(child: QuestionPanel(selectedQuestion,
            onChoiceSelected: this.onAnswerSelection,
          ),flex:8,
          ),
          Expanded(child: StatusPanel(),flex:1),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.help_outline),
      ),
    );
  }
}


