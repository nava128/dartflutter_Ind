import 'package:flutter/material.dart';
//import 'package:quizzy/styles.dart';

class QuizBar  {
  
  static Widget build(BuildContext context) {
    return AppBar(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/quiz.jpeg'),
        radius: 30,
      ),
      title: Text('Quizzy'),
    );
  }
}
