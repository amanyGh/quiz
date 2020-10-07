import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandeler;
  final String answertxt;
  Answer(this.answerHandeler,this.answertxt);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyan[100],
        child:Text(answertxt),
         onPressed: answerHandeler),
    );
  }
}