import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What\'s your favourite color ?',
        'answers': ['Red', 'Green', 'Blue', 'Yellow']
      },
      {
        'question': 'What\'s your favourite animal ?',
        'answers': ['Tiger', 'Lion', 'Elephant', 'Eagle']
      },
    ];
    void _answerQuestion() {
      setState(() {
        _index++;
      });

      print("Current Index : " + _index.toString());
      print("Question was answered");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _index < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                index: _index,
                questions: questions,
              )
            : Result(),
      ),
    );
  }
}
