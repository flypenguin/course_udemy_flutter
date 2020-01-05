import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Flutter App'),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            // card takes the exact size of the child: widget
            Card(child: Text("card 1")),
            // so to style this we have to modify the child: format
            Card(child: Text("card 2")),
          ],
        ),
      ),
    );
  }
}
