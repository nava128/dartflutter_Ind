import 'package:flutter/material.dart';

const kFlatButtonTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const kToolBarTextStyle=TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

final kToolbarColor=Colors.blueGrey.shade700;

class QuizNavigationPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kToolbarColor,
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Text(
              'Previous',
              style: kFlatButtonTextStyle,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: Center(
              child: Text('2/5', style:kToolBarTextStyle,),
            ),
          ),
          FlatButton(
            child: Text(
              'Next',
              style: kFlatButtonTextStyle,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
