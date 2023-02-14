import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
void main() => runApp(MyApp());
void ans(){
  print('Answer selected !');
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();//_ underscore ahead of the method or class is the private class or a private method
}
class _MyAppState extends State<MyApp> {
  var _idx = 0;
  void answer(){
    print('Answered ...!');
  }
 void _reset(){
  setState(() {
    _idx = 0;
  });
 }
  void _questionset(){
    setState(() {
    print(_idx);
      _idx+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _question = const [
    {'questionText' : 'What\'s your favaroit color ?',
    'answerText' : ['Orange','Blue','Green','Red']},
    {
      'questionText' : 'Which colour do not include in rainbow ? ',
    'answerText' : ['Yellow','Violet','Indigo','Pink']
    },{
      'questionText' : 'Which shirt and pant combination colour would you prefer ? ',
    'answerText' : ['Cotton pant and black white check shirt','White grey pant black T-shirt','Black plain pant White shirt','Blue pant grey shirt']
    }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Something in very very fishy '),),
        body: (_idx<_question.length) ? Quiz(answerQuestion : _questionset,question:_question,idx: _idx,)
        : Result(19,_reset),
      ),
    );
  }
}
