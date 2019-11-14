import 'package:flutter/material.dart';
import 'package:quizzy/components/quiz-bar.component.dart';
//import '../components/quiz-navigation-panel.component.dart';
//import '../components/question-panel.component.dart';
//import '../components/status-panel.component.dart';

import 'package:quizzy/components/quiz-navigation-panel.component.dart';
import 'package:quizzy/components/question-panel.component.dart';
import 'package:quizzy/components/status-panel.component.dart';
import 'package:quizzy/screens/quiz-result.screen.dart';
import 'package:quizzy/services/question-answer.service.dart';
import 'package:quizzy/services/quiz-data.repository.dart';
import 'package:quizzy/services/quiz-master.service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class QuizHomeScreen extends StatefulWidget {
  static const id = 'QuizHomeScreen';
  @override
  _QuizHomeScreenState createState() => _QuizHomeScreenState();
}

QuizMaster createQuizMaster() {
  var rep = QuizDataRepository();
  var quizMaster = QuizMaster();
  for (var qa in rep.fetchAll()) quizMaster.addQuestion(qa);
  print(quizMaster.total);
  return quizMaster;
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {
  QuizMaster quizMaster = createQuizMaster();

  List<QuestionAnswer> questions;
  QuestionAnswer selectedQuestion;
  int selectedQuestionIndex;

  getAnswerButton(BuildContext context) {
    //if (quizMaster.isOver)
      return FloatingActionButton(
        child: Icon(Icons.help_outline),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizResult(quizMaster),
            ),
          );
        },
      );
    //else
    //  return null;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedQuestionIndex = 0;
    selectedQuestion = quizMaster.get(selectedQuestionIndex);
  }

  void showAlert(
      {BuildContext context,
      String title,
      String message,
      String caption = 'OK'}) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text(caption),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void showAlert2(
      {BuildContext context,
      String title,
      String message,
      String caption = 'OK',
      bool success}) {
    Alert(
      context: context,
      type: success ? AlertType.success : AlertType.warning,
      title: title,
      desc: message,
    ).show();
  }

  void onAnswerSelection(int selectedChoiceIndex) {
    print('user selected $selectedChoiceIndex');

    setState(() {
      quizMaster.answer(selectedQuestionIndex, selectedChoiceIndex);
    });

    if (quizMaster.isOver) {
      if (quizMaster.total == quizMaster.correct)
        showAlert2(
            context: context,
            title: 'Congratualtions',
            message: 'You Got All Correct',
            caption: 'Great!',
            success: true);
      else
        showAlert2(
            context: context,
            title: 'Completed',
            message:
                'You Got ${quizMaster.correct} of ${quizMaster.total} Correct',
            caption: 'Better Luck Next Time',
            success: false);
    }
  }

  void changeQuestion(int delta) {
    int newValue = selectedQuestionIndex + delta;
    if (newValue >= 0 && newValue < quizMaster.total) {
      setState(() {
        selectedQuestionIndex = newValue;
        selectedQuestion = quizMaster.get(selectedQuestionIndex);
      });
    }
  }

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: QuizBar.build(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: NavigationPanel(
              current: selectedQuestionIndex + 1,
              total: quizMaster.total,
              change: changeQuestion,
            ),
            flex: 1,
          ),
          Expanded(
            child: SimpleGestureDetector(
              child: QuestionPanel(
                selectedQuestion,
                onChoiceSelected: this.onAnswerSelection,
              ),
              onHorizontalSwipe: (direction) {
                if (direction == SwipeDirection.right)
                  changeQuestion(-1);
                else
                  changeQuestion(1);
              },
            ),
            flex: 8,
          ),
          Expanded(child: StatusPanel(quizMaster), flex: 1),
        ],
      ),
      floatingActionButton: getAnswerButton(context),
    );
  }
}
