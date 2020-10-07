import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'result.dart';
void main(){
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _questions =[
      {'questiontxt':'what\'s your favorit color?',
        'answers':[
          {'text':'blue','score':5},
          {'text':'black','score':5},
          {'text':'red','score':5},
        ]},
      {'questiontxt':'what\`s your name?',
      'answers':[
        {'text':'mic','score':10},
        {'text':'pola','score':14},
        {'text':'lolo','score':5},

        ]},
      {'questiontxt':'how old are you?',
      'answers':[
        {'text':'10','score':5},
        {'text':'15','score':5},
        {'text':'30','score':5},
        ]}
    ];
  var _qNumber=0;
  int _totalScore=0;
  

  void _questionAnswer(int score){
     _totalScore+=score;
    setState(() {
       _qNumber+=1;
    });
    print(_qNumber);
    print('total score $_totalScore');
  }
  void _quizReset(){
    setState(() {
      _qNumber=0;
    _totalScore=0;
    }); 
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(title: Text('Quiz'),centerTitle: true,backgroundColor: Colors.deepPurple,),
        body: Center(
          child:_qNumber < _questions.length
          ? QuizScreen(qNumber: _qNumber,questions: _questions,questionAnswer: _questionAnswer,)
          :Result(_totalScore,_quizReset)
        ),
      ),
    );
  }
}