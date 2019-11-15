
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:mausam/screens/weather-screen.dart';
import 'package:mausam/services/location-service.dart';
import 'package:mausam/services/weather-service.dart';
//import 'package:mausam/components/app-bar-builder.dart';
import 'package:mausam/styles.dart';
import 'package:loading/loading.dart';


class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {



  bool loading=false;

  Widget showAction(){
    if(loading)
      return Loading(
        size: 100,
        indicator: BallPulseIndicator(),
      );
    else
      return  FlatButton(
        child: Icon(Icons.my_location,size: 100,),
        onPressed: ()=>getLocation(context),
      );

  }

  void getLocation(context) async{

    setState(() {
      loading=true;
    });


    var info= await WeatherService.getCurrentLocationWeather();

    setState(() {
      loading=false;
    });

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context)=> WeatherScreen(info)
        ),
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Hero(
                  tag: 'logo',
                  child: Image.asset(kLogoImage),
              ),

              Hero(
                tag:'title',
                child: Text('मौसम',
                  style:kTitleStyle.copyWith(fontSize: 50,),),
              ),

              showAction()
            ]

          ),
        ),
      ),
    );
  }
}
