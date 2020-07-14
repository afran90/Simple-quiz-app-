import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  @override
  final Function answerstext;
  final String text;
  Answers(this.answerstext,this.text);
 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(text),
        onPressed: answerstext, 
      ),
    );
  }
}
