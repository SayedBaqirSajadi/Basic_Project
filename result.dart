import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScoure;
  final Function resetHandler;
  Result(this.resultScoure, this.resetHandler);

  String get resultPhrase {
    String resultText = 'you did it !';
    if (resultScoure <= 5) {
      resultText = 'Your the bist !';
    } else if (resultScoure <= 10) {
      resultText = 'Your good';
    } else if (resultScoure <= 12) {
      resultText = 'Please try to the best !';
    } else {
      resultText = 'Your Bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(onPressed: resetHandler, child: Text('Reset Quiz')),
          ],
        ),
      ),
    );
  }
}
