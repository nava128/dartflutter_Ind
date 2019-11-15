

import 'package:flutter/material.dart';
import 'package:mausam/styles.dart';


class AppbarBuilder{

  Widget build(){
    return AppBar(
      title: Text('मौसम', style: kTitleStyle),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(kLogoImage),
      ),
    );
  }
}