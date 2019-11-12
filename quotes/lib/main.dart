import 'package:flutter/material.dart';

void main() => runApp(LayoutApp());

const url = 'https://images.financialexpress.com/2019/10/gandhi.jpg';
const quote =
    'Freedom is Meaningless if It doesn not include freedom to make mistakes';

const customTextStyle=TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,
);


class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          color:Colors.teal.shade200,

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Column1(),
              new Column2(),
            ],
          ),
        )
      ),
    );
  }
}

class Column2 extends StatelessWidget {
  const Column2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(color:Colors.greenAccent,
          child: Column(
            children: <Widget>[
              Text('Col 2 Item 1', style:customTextStyle),
              Text('Col 2 Item 2', style:customTextStyle),
              Text('Col 2 Large Item 3', style:customTextStyle),
              Text('Col 3 Item 4', style:customTextStyle),
            ],
          )
      ),
      flex:3
    );
  }
}

class Column1 extends StatelessWidget {
  const Column1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(color:Colors.yellowAccent,
        child: Column(
          children: <Widget>[
            Text('Col 1 Item 1', style:customTextStyle),
            Text('Col 1 Item 2', style:customTextStyle),
            Text('Col 1 Item 3', style:customTextStyle),
            Text('Col 1 Item 4', style:customTextStyle),
          ],
        ),
      ),
      flex: 2,
    );
  }
}


class _LayoutApp extends StatelessWidget {
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
          color:Colors.yellowAccent.shade100,
          child: Row(

            children: <Widget>[
              //MyColumn(),
              Container(
                color:Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    Text('Widget 1', style: customTextStyle,),
                    Text('Widget 2', style: customTextStyle,),
                    Text('Widget 3', style: customTextStyle,),

                  ],
                ),
              ),

            ],
          ),
        ),
        ),
    );
  }
}

