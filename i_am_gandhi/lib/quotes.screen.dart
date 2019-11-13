import 'dart:ffi';

import 'package:flutter/material.dart';
import 'styles.dart';
import 'quotes-manager.service.dart';
import 'quote-view.component.dart';

QuotesManager manager=new QuotesManager();


class QuotesScreen  extends StatefulWidget {

  @override
  _QuotesScreenState createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  Quote quote;

  _QuotesScreenState(){
    //quote = manager.getRandomQuote();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quote=manager.getRandomQuote();
  }

//  void changeQuote(){
//
//    //now flutter knows you changed the state
//    //any change in the state will cause build() to be executed
//    setState(() {
//      quote=manager.getRandomQuote();
//    });
//
//
//    print('quotes changed to ${quote.quote}');
//  }

  @override
  Widget build(BuildContext context) {
    //never call setState inside the build method
//    setState(() {
//      quote=manager.getRandomQuote();
//    });

    return Scaffold(
      backgroundColor: kAppBackground,
      appBar: AppBar(
        backgroundColor: kAppBackground,
        //leading: Image(image: AssetImage('images/gandhi01.jpg'),),
        //leading: Image.asset('images/gandhi01.jpg'),
        leading : CircleAvatar(
            backgroundImage: AssetImage('images/gandhi01.jpg'),
          ),
        title: Text(
          'I Am Gandhi!',
        ),
      ),
      body: QuotesView(quote),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            quote=manager.getRandomQuote();
          });
        },
      ),
    );
  }
}

