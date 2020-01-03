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
      "answers": ["A Riddle!", "A Fiddle!", "A Sharmagiddle!"],
    },
    {
      "question": "Who made this?",
      "answers": ["A blacksmith!", "A whiteknight!", "A redneck!"],
    },
    {
      "question": "How is this?",
      "answers": ["Awesome!", "Awful!", "Amazing!"],
    },
  ];
  var _cycle = 0;

  void _buttonPressed() {
    // if we do this:
    //_cycle = (_cycle + 1) % _questions.length;
    // ... the text will NOT change!

    setState(() {
      // because we place this IN HERE this works.
      _cycle += 1;
    });

    print("cycle: $_cycle");
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
