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

  void _questionsAnswer() {
    setState(() {
      _questionIndex++;
      // if (_questionIndex < questions.length-1) {
      // } else {
      //   _questionIndex = 0;
      // }
    });
    print(_questionIndex);
  }

  final _questions = [
    {
      'questionText': 'This is question 1',
      'answers': ['Black', 'Red', 'Cyne']
    },
    {
      'questionText': 'This is question 2',
      'answers': ['Goc', 'Cog', 'Dog','CAR']
    },
    {
      'questionText': 'This is question 3',
      'answers': ['Tired', 'Sleep', 'Wake']
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
              : Result(),
        ),
      ),
    );
  }
}
