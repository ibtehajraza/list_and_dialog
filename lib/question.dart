/**
 * 
 * This is a question helper class. Initialy only ment to return text.
 * 
 */
import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}