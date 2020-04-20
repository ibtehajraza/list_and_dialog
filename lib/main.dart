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
        _questionIndex ++;
      // if (_questionIndex < questions.length-1) {
      // } else {
      //   _questionIndex = 0;
      // }
    });
    print(_questionIndex);
  }

  final questions = [
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
          child: _questionIndex < questions.length ? Column(
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
          ) : Center(child: Text('Final Page !t is.'),),
        ),
      ),
    );
  }
}
