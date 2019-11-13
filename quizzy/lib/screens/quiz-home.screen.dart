import 'package:flutter/material.dart';
//import '../components/quiz-navigation-panel.component.dart';
//import '../components/question-panel.component.dart';
//import '../components/status-panel.component.dart';

import 'package:quizzy/components/quiz-navigation-panel.component.dart';
import 'package:quizzy/components/question-panel.component.dart';
import 'package:quizzy/components/status-panel.component.dart';

class QuizHomeScreen extends StatefulWidget {
  @override
  _QuizHomeScreenState createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          child:Image.asset('images/quiz.jpg'),
          backgroundImage:AssetImage('images/quiz.jpg'),
        ),
        title: Text('Quizzy'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: QuizNavigationPanel(),flex: 1,),
          Expanded(child: QuestionPanel(),flex:8),
          Expanded(child: StatusPanel(),flex:1),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.help_outline),
      ),
    );
  }
}


