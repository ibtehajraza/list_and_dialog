import 'package:flutter/material.dart';

import './question.dart';

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

  void _qandA() {
    setState(() {
      if (_questionIndex == 1) {
        _questionIndex = 0;
      } else {
        _questionIndex = 1;
      }
    });
    print(_questionIndex);
  }

  var questions = ['This is first', 'This is second'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Question(
                questions[_questionIndex],
              ),
              RaisedButton(
                child: Text('data'),
                onPressed: _qandA,
              ),
              RaisedButton(
                child: Text('data'),
                onPressed: () {
                  print('DC');
                },
              ),
              RaisedButton(
                child: Text('data'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
