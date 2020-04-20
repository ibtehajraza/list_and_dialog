import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function handlerFunction;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {@required this.handlerFunction,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((ans) {
          return Answer( () => handlerFunction(ans['score']) , ans['text']);
        }).toList(),
        /*Answer(_questionsAnswer),
              Answer(_questionsAnswer),
              Answer(_questionsAnswer)*/
      ],
    );
  }
}
