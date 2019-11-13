//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';


class Person{

  String name;
  String email;
  String phone;

  Person({@required this.name, this.email='noone@nowhere.com', this.phone});

  toString(){
    return 'Person $name\t [Email: $email, Phone:$phone';
  }

}

void main(){
  var p1=Person(name: 'Vivek',phone:'884848484');
  print(p1);

  var p2=Person(email:'someone@somewhere.com', name:'Someone');
  print(p2);

  var p3=Person();
  print(p3);

}