import 'package:flutter/material.dart';
import 'package:quizzy/services/question-answer.service.dart';
import 'package:quizzy/styles.dart';

class QuestionPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionAnswer qa = QuestionAnswer(
      'Who was the first \'Param Veer Chakra\' Awardee',
      ['Abdul Hameed', 'Virkam Batra', 'Somenath Sharma', 'Shaitan Singh'],
      2,
    );
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            qa.question,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'QuestionFont',
            ),
          ),
          ChoicePanel(qa),
        ],
      ),
    );
  }
}

class ChoicePanel extends StatelessWidget {
  QuestionAnswer qa;
  ChoicePanel(this.qa);

  List<Widget> buildChoices() {
    var widgets = <Widget>[];

    for (String choice in qa.choices) {
      var choiceWidget = Card(
        color: Colors.white,
        
        child: GestureDetector(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
            child: Text(
              choice,
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 20,
                letterSpacing: 1.5,
                color:Colors.black,
              ),
            ),
          ),
          onTap: (){print('selected $choice');},
        ),
      );
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
