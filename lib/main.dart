import 'package:flutter/material.dart';
import "./quiz.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      "question": "What is this?",
      "answers": [
        {"text": "A Riddle!", "score": 1},
        {"text": "A Fiddle!", "score": 0},
        {"text": "A Sharmagiddle!", "score": 0},
      ],
    },
    {
      "question": "Who made this?",
      "answers": [
        {"text": "A blacksmith!", "score": 0},
        {"text": "A whiteknight!", "score": 0},
        {"text": "A redneck!", "score": 1},
      ],
    },
    {
      "question": "How is this?",
      "answers": [
        {"text": "Awesome!", "score": 0},
        {"text": "Awful!", "score": 1},
        {"text": "Amazing!", "score": 0},
      ],
    },
  ];
  var _cycle = 0;
  var _score = 0;

  void _buttonPressed(int score) {
    // if we do this:
    //_cycle = (_cycle + 1) % _questions.length;
    // ... the text will NOT change!

    setState(() {
      // because we place this IN HERE this works.
      _cycle += 1;
      _score += score;
    });

    print("cycle: $_cycle");
    print("score: $_score");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('me title!')),
        body: _cycle < _questions.length
            ? Quiz(
                question: _questions[_cycle],
                handler: _buttonPressed,
              )
            : Center(
                child: Text("Fertig."),
              ),
      ),
    );
  }
}
