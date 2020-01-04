import "package:flutter/material.dart";

class QuizResult extends StatelessWidget {
  final int totalScore;
  final Function restartHandler;

  QuizResult({this.totalScore, this.restartHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "Your total score is:",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            totalScore.toString(),
            style: TextStyle(fontSize: 50),
          ),
          RaisedButton(
            child: Text("Restart Quiz"),
            onPressed: restartHandler,
          ),
        ],
      ),
    );
  }
}
