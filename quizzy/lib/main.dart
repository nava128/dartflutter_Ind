import 'package:flutter/material.dart';
import 'screens/quiz-home.screen.dart';
import 'styles.dart';

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
      home: QuizHomeScreen(),

    );
  }
}
