import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Question extends StatelessWidget {
  final _question;
  Question(this._question);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        _question,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
      ),
      width: double.infinity,
      margin: EdgeInsets.all(5),
    );
  }
}
