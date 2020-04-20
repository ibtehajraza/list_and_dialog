import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final Function resetCallBack;

  Result(this.score,this.resetCallBack);

  String get resultPhrase {
    return 'Your final score is [ ' + this.score.toString() + ' ]';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
              ),
            ),
            FlatButton(onPressed: resetCallBack, child: Text('Reset'))
          ],
        ),
      ),
    );
  }
}
