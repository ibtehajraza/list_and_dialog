import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _totalScore=0;

  void _questionsAnswer(int score) {
    setState(() {
      _questionIndex++;
    });

    _totalScore += score;



    print('Total Score: '+_totalScore.toString());
    print(_questionIndex);
  }

  void _reset(){
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  final _questions = [
    {
      'questionText': 'This is question 1',
      'answers': [
        {'text': 'Black', 'score': 8},
        {'text': 'Red', 'score': 1},
        {'text': 'Cyne', 'score': 3}
      ]
    },
    {
      'questionText': 'This is question 2',
      'answers': [{'text':'Goc','score':5}, {'text':'Cog','score':9}, {'text':'Dog0','score':3}]
    },
    {
      'questionText': 'This is question 3',
      'answers': [{'text':'Tired','score':1}, {'text':'Sleep','score':15}]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  handlerFunction: _questionsAnswer,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore,_reset),
        ),
      ),
    );
  }
}
