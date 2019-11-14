import 'package:flutter/material.dart';
import 'package:quizzy/screens/quiz-home.screen.dart';
import 'package:quizzy/screens/welcome.screen.dart';
//import 'screens/quiz-home.screen.dart';
//import  'styles.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red.shade200,
        )
      ),
      //home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id ,
      routes:<String,WidgetBuilder>{
        WelcomeScreen.id: (context)=> WelcomeScreen(),
        QuizHomeScreen.id:(context)=>QuizHomeScreen()
      }

    );
  }
}
