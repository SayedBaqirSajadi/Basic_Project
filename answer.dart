import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: RaisedButton(
        color: Colors.grey,
        textColor: Colors.black,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
