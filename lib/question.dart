import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  final String quesText;
  Question(this.quesText);

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10) ,
        child: Text(
          quesText,
          style: TextStyle(fontSize: 28,fontStyle: FontStyle.normal),
          textAlign: TextAlign.center,
        ));
  }
}
