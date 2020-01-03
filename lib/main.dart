import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var texts = ["A Riddle!", "A Fiddle!", "A Sharmagiddle!"];
  var cycle = 0;

  void buttonPressed() {
    // if we do this:
    //cycle = (cycle + 1) % texts.length;
    // ... the text will NOT change!

    setState(() {
      // because we place this IN HERE this works.
      cycle = (cycle + 1) % texts.length;
    });

    print("cycle: $cycle");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('me title!')),
            body: Column(children: [
              Text(texts[cycle]),
              RaisedButton(
                child: Text("PRESS! PRESS!"),
                onPressed: buttonPressed,
              )
            ])));
  }
}
