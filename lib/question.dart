import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questtext;

  Question(this.questtext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child:Text(
      questtext,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
      ),
    );
  }
}