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
    {'questionText' : 'What\'s your favaroit porn star ?',
    'answerText' : ['Dani daniels','Mia khalifa','Kendra lust','Jonny sins']},
    {
      'questionText' : 'Which website do u use to watch porn ? ',
    'answerText' : ['X-hamster','X-videos','Porn hub','XNXX']
    },{
      'questionText' : 'From where the fuck you get these knowledge ? ',
    'answerText' : ['Just explored','Childhood friends','School friends','Brothers']
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
