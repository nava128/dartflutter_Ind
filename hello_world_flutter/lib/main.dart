import 'package:flutter/material.dart';

//start of dart application
void main() {
  //should run a flutter application
  runApp( MyApp(), );
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Text(
          'Hello Flutter Widget World',
        ),
      ),
    );

  }
}