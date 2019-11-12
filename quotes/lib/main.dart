import 'package:flutter/material.dart';

void main() => runApp(QuotesApp());

const url = 'https://images.financialexpress.com/2019/10/gandhi.jpg';
const quote =
    'Freedom is Meaningless if It doesn not include freedom to make mistakes';

const customTextStyle=TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,
);

class QuotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.question_answer,
            size: 20,
          ),
          title: Text('Quotes of The Day'),
        ),
        body: Container(
          color:Colors.amberAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Widget 1', style: customTextStyle,),
              Text('Very Very Wide Widget', style: customTextStyle,),
              Text('Widget 3', style: customTextStyle,),
            ],
          ),
        ),
        ),
    );
  }
}
