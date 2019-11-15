
import 'package:flutter/material.dart';
//import 'package:mausam/components/app-bar-builder.dart';
import 'package:mausam/styles.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Image.asset(kLogoImage),
              FlatButton(
                
                child: Icon(Icons.my_location,size: 100,),
              )
            ]

          ),
        ),
      ),
    );
  }
}
