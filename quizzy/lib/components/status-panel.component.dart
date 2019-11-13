import 'package:flutter/material.dart';

const double kStatusIconSize = 40;
const Color kSuccessColor = Colors.lightGreenAccent;
final Color kErrorColor = Colors.red.shade900;
final Color kNotAnsweredColor = Colors.black87;

class StatusPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.help,
            color: kNotAnsweredColor,
            size: kStatusIconSize,
          ),
          Icon(Icons.check_circle, color: kSuccessColor, size: kStatusIconSize),
          Icon(
            Icons.cancel,
            color: kErrorColor,
            size: kStatusIconSize,
          ),
        ],
      ),
    );
  }
}
