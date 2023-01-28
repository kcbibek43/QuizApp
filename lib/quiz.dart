import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
   final  List<Map<String,Object>> question;
   final int idx;
   final Function answerQuestion;
   Quiz({
   @required this.answerQuestion,
   @required this.question,
   @required this.idx,
   });
  @override
  Widget build(BuildContext context) {
   return  Column(
          children: [
          MyWidget(question[idx]['questionText']),
          ...(question[idx]['answerText'] as List<String>).map((answer){
            return Answer(answerQuestion,answer);
          }).toList()
        ],);
  }
}