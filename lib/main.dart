import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Question.dart';

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
      'What\'s your favourite color ?',
      'What\'s your mood right now ?'
    ];
    void _answerQuestion() {
      setState(() {
        _index++;
        _index%=2;
      });
      
      print ("Current Index : " + _index.toString());
      print("Question was answered");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My First App"
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_index]),
            RaisedButton(
              child: Text("Button 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Button 2"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
