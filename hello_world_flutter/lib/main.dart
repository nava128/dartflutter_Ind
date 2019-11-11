import 'package:flutter/material.dart';

//start of dart application
void main() {
  //should run a flutter application
  runApp(MyApp());
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




class MyAppV1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.ac_unit),
            title: Text('Hello World Flutter'),
          ),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
            'Welcome to My Flutter Application!',
            ),
          ),
        ),
      ),
    );
  }
}
