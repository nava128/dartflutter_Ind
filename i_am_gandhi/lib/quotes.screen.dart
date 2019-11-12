import 'package:flutter/material.dart';
import 'styles.dart';
import 'quotes-manager.service.dart';


//const url='https://akm-img-a-in.tosshub.com/indiatoday/images/story/201910/gandhi-770x433.jpeg?6vX9r3yRDJyLfMxt6xqU_leK98tByZBZ';
//const quote="First they ignore you, then they laugh at you, then they fight you, then you win";

QuotesManager manager=QuotesManager();

class QuotesScreen extends StatelessWidget {

  Quote quote;
  QuotesScreen _currentScreen;
  QuotesScreen(){
    _currentScreen=this;
  }

  @override
  Widget build(BuildContext context) {

    quote=manager.getRandomQuote();

    var quotesText=Text(quote.quote,
      textAlign: TextAlign.center,
      style: kQuotestTextStyle,

    );

    return Scaffold(
        backgroundColor: kAppBackground,
        appBar: AppBar(
          backgroundColor: kAppBackground,
          leading: Icon(Icons.question_answer),
          title: Text('I Am Gandhi!',

          ),
        ),
        body: Column(
          children: <Widget>[
            //Image(image:NetworkImage(url)),
            Image(image: AssetImage(quote.image)),
            Container(
              padding: EdgeInsets.all(20,),
                child: quotesText,
            ),
            FloatingActionButton(
              onPressed: (){
                quote=manager.getRandomQuote();
                quotesText.data=quote.quote;

              },
              child: Icon(Icons.refresh),
            )
          ],
        )
    );
  }
}



