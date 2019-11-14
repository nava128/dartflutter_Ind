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

class NavigationPanel  extends StatelessWidget {

  final int current;
  final int total;
  final int minIndex;
  Function change;
  NavigationPanel({this.current,
    this.total,
    this.change,
    this.minIndex=1
  });

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
            onPressed: current>minIndex ?  () {  this.change(-1);  } :null,
          ),
          Expanded(
            child: Center(
              child: Text('$current/5', style:kToolBarTextStyle,),
            ),
          ),
          FlatButton(
            child: Text(
              'Next',
              style: kFlatButtonTextStyle,
            ),
            onPressed: current<total? () {  this.change(1); }:null,
          ),
        ],
      ),
    );
  }
}
