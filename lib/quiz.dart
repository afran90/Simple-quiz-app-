import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> ques;
  final Function ans;
  final int k;
  Quiz({@required this.ques,@required this.ans,@required this.k});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
         Question(ques[k]['questionText']),
         ...(ques[k]['answerText']as List<Map<String,Object>>).map((answers){
                  return Answers(()=>ans(answers['score']),answers['text']);
         }).toList()
        ]);
  }
}