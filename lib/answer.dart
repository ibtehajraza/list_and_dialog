import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      
      child: RaisedButton(
        color: Colors.green,
        textColor: Colors.white,
        child: Text('data'),
        onPressed: selectHandler,
      ),
    );
  }
}
