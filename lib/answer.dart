import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
   final VoidCallback answerst;
   final String answertxt;
    Answer(this.answerst,this.answertxt);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answertxt,
        style: TextStyle(
          fontSize: 24,
     // backgroundColor:Color.fromARGB(255, 0, 0, 0) ,
      color: Color.fromARGB(255, 255, 255, 255) ,)
    , textAlign: TextAlign.center)
        ,
        onPressed: answerst,
        ),
    );
  }
}