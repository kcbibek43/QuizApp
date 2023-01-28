import 'package:flutter/material.dart';
class Result extends StatelessWidget {
     final int resultscore;
     final Function reset;
     Result(this.resultscore,this.reset);
   String get result {
    var resulttext = 'You are fucked up !';
    if(resultscore<=2) 
    resulttext = 'You are a bitch';
    else if(resultscore<=10){
    resulttext = 'You are a motherfucker ';
    }
    return resulttext;
   }
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text(result,
      style: TextStyle(fontSize: 36 , fontWeight: FontWeight.bold),),
     FlatButton(onPressed: reset, child: Text('Restart app! '),
     textColor: Colors.blue,)
      ],
    ),
        );
  }
}