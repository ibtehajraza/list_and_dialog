import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
      if (_questionIndex == 1) {
        _questionIndex = 0;
      } else {
        _questionIndex = 1;
      }
    });
    print(_questionIndex);
  }

  var questions = [
    {
      'questionText': 'This is question 1', 
      'answers': ['Black', 'Red', 'Cyne']
    },
    {
      'questionText': 'This is question 2', 
      'answers': ['Goc', 'Cog', 'Dog']
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
          child: Column(
            children: <Widget>[
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>).map((ans){
                return Answer(_questionsAnswer,ans);
              }).toList(),
              /*Answer(_questionsAnswer),
              Answer(_questionsAnswer),
              Answer(_questionsAnswer)*/
            ],
          ),
        ),
      ),
    );
  }
}
