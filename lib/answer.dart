import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String _answerText;

  Answer(this._selectHandler, this._answerText);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          _answerText,
        ),
        color: Colors.blueGrey,
        textColor: Colors.white,
        onPressed: _selectHandler,
      ),
    );
  }
}
