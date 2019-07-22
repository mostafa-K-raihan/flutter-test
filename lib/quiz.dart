import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget{
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQuestion;

  Quiz({this.questions, this.index, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
                children: <Widget>[
                  Question(questions[index]['question']),
                  ...(questions[index]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              );
  }

}