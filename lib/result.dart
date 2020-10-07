import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final result;
  final Function restHandeler;
  Result(this.result, this.restHandeler);

  String get resultPhrase{
    String phrase;
    if(result <=15){
      phrase='soooo bad';
    }else if(result <= 25){
      phrase='fantastic';
    }
    return phrase;
  }
  @override
  Widget build(BuildContext context) {
    return 
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('you are $resultPhrase'),
        RaisedButton(child: Text('resetQuiz'),onPressed: restHandeler)
      ],
    ),);
  }
}