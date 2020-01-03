import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function onPressed;
  final int answerNo;

  Answer(this.answerNo, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text("Answer $answerNo"),
        onPressed: onPressed,
      ),
    );
  }
}
