import 'package:flutter/material.dart';
import 'package:quizzy/screens/quiz-home.screen.dart';
import 'package:quizzy/styles.dart';

class WelcomeScreen extends StatelessWidget {

  static const id='WelcomeScreen';
  //used for route build  using builder
  void _startQuiz(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> QuizHomeScreen()),
    );
  }

  //use named route here!
  void startQuiz(BuildContext context){
    Navigator.pushNamed(context, QuizHomeScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset('images/quiz.jpeg'),
          ),
          Expanded(
            child: GestureDetector(
                          child: Container(
                child: Text(
                  'Quizzy',
                  style: kQuestionStyle.copyWith(
                    color: Colors.black,
                    fontSize: 50,
                  ),
                ),
              ),
              onTap:(){startQuiz(context);} ,
            ),
          ),
          
        ],
      ),
    );
  }
}
