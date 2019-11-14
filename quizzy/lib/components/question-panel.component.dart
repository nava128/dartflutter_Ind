import 'package:flutter/material.dart';
import 'package:quizzy/services/question-answer.service.dart';
import 'package:quizzy/styles.dart';

class QuestionPanel extends StatelessWidget {

  QuestionAnswer selectedQuestion;
  Function onChoiceSelected;

  QuestionPanel(this.selectedQuestion,{this.onChoiceSelected});


  @override
  Widget build(BuildContext context) {




    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            selectedQuestion.question,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'QuestionFont',
            ),
          ),
          ChoicePanel(selectedQuestion,
            onChoiceSelected: onChoiceSelected,
          ),
        ],
      ),
    );
  }
}

class ChoicePanel extends StatelessWidget {
  QuestionAnswer qa;
  Function onChoiceSelected;
  ChoicePanel(this.qa,{this.onChoiceSelected});

  Widget buildChoice(QuestionAnswer qa, int choiceIndex){

    return Card(
      color: Colors.white,

      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          child: Text(
            qa.choices[choiceIndex],
            style: TextStyle(
              fontFamily: 'Times New Roman',
              fontSize: 20,
              letterSpacing: 1.5,
              color:Colors.black,
            ),
          ),
        ),
        onTap: (){ onChoiceSelected(choiceIndex);},
      ),
    );

  }


  List<Widget> buildChoices() {
    var widgets = <Widget>[];

    int id=0;
    for (var choice in qa.choices) {

      var choiceWidget = buildChoice(qa, id);

      id++;
      widgets.add(choiceWidget);
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buildChoices(),
      ),
    );
  }
}
