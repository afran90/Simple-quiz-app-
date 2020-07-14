import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red,Colors.blue])
      ),
      
    );
  }
}