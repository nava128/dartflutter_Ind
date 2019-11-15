import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:mausam/components/app-bar-builder.dart';
import 'package:mausam/services/weather-service.dart';

class WeatherScreen extends StatelessWidget {
  WeatherInfo info;
  WeatherScreen(this.info) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarBuilder.build(),
      body: Center(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              WeatherService.getConditionIconUrl(info.icon),
            ),
            radius: 50,
          ),
          Text(info.shortStaus, style:TextStyle(fontSize: 50,)),
            ],
          ),
          Row(
            children: <Widget>[
              Text(info.city, style:TextStyle(fontSize: 40,)),
              Text(',', style:TextStyle(fontSize: 40,)),
              Text(info.country, style:TextStyle(fontSize: 40,)),

            ],
          ),
          Row(
            children: <Widget>[
              Text(info.temperature.toString(), style:TextStyle(fontSize: 40,)),
            ],
          ),
          Expanded(
            child:Container(),),
        ],
      )),
    );
  }
}
