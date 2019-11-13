import 'package:flutter/material.dart';
import 'styles.dart';
import 'quotes-manager.service.dart';





class QuotesView extends StatelessWidget {
  final Quote quote;
  //a final field can be modified only once (
  //this once is done by the constructor
  QuotesView(this.quote);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Image(image:NetworkImage(url)),
        Image(image: AssetImage(quote.image),),

        Container(
          padding: EdgeInsets.all(
            20,
          ),
          child: Text(
            quote.quote,
            textAlign: TextAlign.center,
            style: kQuotestTextStyle,
          ),
        ),
      ],
    );
  }
}
