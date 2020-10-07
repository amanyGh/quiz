
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';


class QuizScreen extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final qNumber;
  final Function questionAnswer;

  const QuizScreen({
  @required this.questions,
  @required this.qNumber,
  @required this.questionAnswer});
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
            Question(questions[qNumber]['questiontxt']),
            ...(questions[qNumber]['answers'] as List<Map<String,Object>>).map((answer){
              return Answer(()=>questionAnswer(answer['score']),answer['text']);

            }).toList()
          ],);
  }
}