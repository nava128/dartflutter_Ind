

import 'package:flutter/cupertino.dart';

class KeyValueRow extends StatelessWidget {
  String label;
  dynamic value;

  KeyValueRow(this.label,this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child:Row(
        children: <Widget>[
          Expanded(child:Text(label,style:TextStyle()), flex: 4,),
          Expanded(child:Text(value.toString(),style:TextStyle()), flex: 6,),
        ],
      ),
    );
  }
}
