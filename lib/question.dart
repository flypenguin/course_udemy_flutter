import "package:flutter/material.dart";

class Question extends StatelessWidget {
  // like java - final: the value must not change after initialization
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text("This is? " + questionText);
  }
}
