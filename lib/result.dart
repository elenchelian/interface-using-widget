import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandler;

  Result(this.resultscore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultscore <= 8) {
      resultText = 'You are awesome and inncocent!';
    } else if (resultscore <= 12) {
      resultText = 'Pretty Likable!';
    } else if (resultscore <= 16) {
      resultText = ' You are strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz'),
            textColor:Colors.blue ,
          )
        ],
      ),
    );
  }
}
