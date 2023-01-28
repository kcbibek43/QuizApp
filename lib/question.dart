// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {//This is useful becausee it will help us further to make our owm costum widigts in future
    String questionst;  // final makes the data never changes in this class
   MyWidget(this.questionst);
  @override
  Widget build(BuildContext context) {
    return Container( // null container usually easy to place
      width: double.infinity,//takes maximum width of the screen as possible
      margin: EdgeInsets.all(10),
      child:Text(questionst,
      style: TextStyle(fontSize: 24,
      backgroundColor:Color.fromARGB(255, 0, 0, 0) ,
      color: Color.fromARGB(255, 0, 242, 255) ,)
    , textAlign: TextAlign.center,),);
  }
}