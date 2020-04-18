import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void qandA() {
    setState(() {
      if (questionIndex == 1) {
        questionIndex = 0;
      }else{
        questionIndex = 1;
      }
    });
    print(questionIndex);
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
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('data'),
                onPressed: qandA,
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
