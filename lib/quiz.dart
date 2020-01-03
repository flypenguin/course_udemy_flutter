import "package:flutter/material.dart";
import "./answer.dart";
import "./question.dart";

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function handler;

  Quiz({this.question, this.handler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question["question"]),
        ...(question["answers"] as List<Map<String, Object>>).map((answersMap) {
          return Answer(
            answersMap["text"],
            () => handler(answersMap["score"]),
          );
        }).toList()
      ],
    );
  }
}
