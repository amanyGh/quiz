import 'package:flutter/material.dart';
class Question extends StatelessWidget {
final questionText;
Question( this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(questionText,style: TextStyle(color: Colors.deepPurple[200],fontSize: 25,),textAlign: TextAlign.center),
    );
  }
}