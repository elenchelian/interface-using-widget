import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{
  final List<Map<String,Object>>question1;
  final int questionindex;
  final Function ansquestion;

  Quiz({
    @required this.question1,
    @required this.ansquestion,
    @required this.questionindex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question1[questionindex]['questionText'],
        ),
        ...(question1[questionindex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=> ansquestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }

}