

import 'package:flutter/material.dart';
import 'package:mausam/styles.dart';


class AppbarBuilder{

  static Widget build(){
    return AppBar(
      title: Hero( tag:'title', child: Text('मौसम', style: kTitleStyle)),
      leading: Hero(
        tag:'logo',
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(kLogoImage),
        ),
      ),
    );
  }
}