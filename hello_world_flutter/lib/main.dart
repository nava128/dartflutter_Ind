import 'package:flutter/material.dart';

//start of dart application
void main() {
  //should run a flutter application
  runApp(MyAppV2());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          leading: Icon(Icons.account_balance),
          title: Text('Hello Flutter App'),
        ),
        body:Container(
          width: double.infinity,
          height: double.infinity,
          //margin: EdgeInsets.all(30),
          padding:EdgeInsets.symmetric(vertical: 20,horizontal: 50),
          color: Color(0xfff1c2e3),
          child: Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.green.shade600,
              ),
            ),
          ),
        ),

      ),
    );
  }
}



class MyAppV0 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Hello World',textDirection: TextDirection.ltr,);
  }
}

class MyAppV2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent.shade700,
        appBar: AppBar(
          leading: Icon(Icons.map),
          title: Text('Flutter World!'),
        ),
        body: Container(
          color: Colors.redAccent.shade200,
          width:double.infinity,
          height:200,
          margin:EdgeInsets.symmetric(vertical: 20),
          padding: EdgeInsets.only(left:50,
            top:100,),
          child: Text('Hello World'),
        ),
      ),
    );
  }
}


class MyAppV1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
          child: Text('Hello World',
          ),
      ),
    );
  }
}
