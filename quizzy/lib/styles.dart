import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final kCustomTheme=ThemeData(
  fontFamily: 'QuestionFont',
  scaffoldBackgroundColor: Colors.yellowAccent.shade100,
  primaryColor: Colors.green,
);


final kQuestionStyle=TextStyle(
  fontSize: 30,
  fontFamily: 'QuestionFont',
);

const double kStatusIconSize = 40;
const Color kSuccessColor = Colors.lightGreenAccent;
final Color kErrorColor = Colors.red.shade900;
final Color kNotAnsweredColor = Colors.yellow;

//const IconData kNotAnsweredIcon= Icons.warning;
//const IconData kCorrectIcon=Icons.check_circle;
//const IconData kIncorrectIcon=Icons.cancel;


const IconData kNotAnsweredIcon= FontAwesomeIcons.info;
const IconData kCorrectIcon=FontAwesomeIcons.checkCircle;
const IconData kIncorrectIcon=FontAwesomeIcons.timesCircle;


