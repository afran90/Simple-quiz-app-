import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
import 'background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  
    return _QusState();
  }
}

class _QusState extends State<MyApp> {
  var c = 0;
  var totalscore=0;
  void _answer(int s) {
    totalscore+=s;
    setState(() {
      c = c + 1;
    });
    print(totalscore);
  }
  void _restart(){
  setState(() {
    totalscore=0;
    c = 0;
  });
   
  }

  Widget build(BuildContext context) {
    const color =['0xff00BCD1','0xffb74093','0xff00B678'];
    const ques = [
     {'questionText':'What\'s your favourite colour?',
      'answerText':[{'text':'Red','score':10},
      {'text':'Blue','score':6},
      {'text':'Yellow','score': 4},
      {'text':'Black','score': 2}] 
     }, 
    {'questionText':'What\'s your favourite Pet?',
    'answerText':[{'text':'Dog','score':10},
      {'text':'Cat','score':6},
      {'text':'Tiger','score':4},
      {'text':'Snake','score':2}] 
     } ,
      {'questionText':'What\'s your favourite Car brand?',
      'answerText':[{'text':'Ford','score':10},
      {'text':'Ferrari','score':6},
      {'text':'Toyota','score':4},
      {'text':'Honda','score':2}]  
     }, ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff00BCD1),
        appBar: AppBar(
          title: Text('Question Answer Apps',textAlign: TextAlign.center,),
        ),
        body:
           c<ques.length ?  Quiz( ques:ques,ans: _answer, k:c)
         : Result(totalscore,_restart),
      ),
    );
  }
}
