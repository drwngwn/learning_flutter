import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan Row dan Column"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Text 1"),
          Text("Text 2"),
          Text("Text3"),
          Row(
            children: <Widget>[Text("Text 4"), Text("Text 5"), Text("Text 6")],
          )
        ],
      ),
    ));
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
