import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function start; 
  Result(this.total,this.start);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Column(
        children: <Widget>[
          Text('Total Score',style: TextStyle(fontSize: 24),),
          Text(total.toString(),
          style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          RaisedButton(onPressed: start,child: Text('Restart?'),color: Colors.amber,)
        ],
      ),
      );
  }
}