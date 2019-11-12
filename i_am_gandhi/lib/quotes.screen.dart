import 'package:flutter/material.dart';

const url='https://akm-img-a-in.tosshub.com/indiatoday/images/story/201910/gandhi-770x433.jpeg?6vX9r3yRDJyLfMxt6xqU_leK98tByZBZ';
const quote="First they ignore you, then they laugh at you, then they fight you, then you win";

class QuotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.redAccent.shade200,
          leading: Icon(Icons.question_answer),
          title: Text('I Am Gandhi'),
        ),
        body: Column(
          children: <Widget>[
            Image(image:NetworkImage(url)),
            Container(
              padding: EdgeInsets.all(20,),
                child: Text(quote,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),

                ),
            ),
          ],
        )
    );
  }
}



