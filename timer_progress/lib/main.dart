import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Progress Bar"),),
        body: Center(
          child: CustomProgressBar(200),
        )
      ),
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double width;

  CustomProgressBar(this.width);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.timer),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            Material(
              child: AnimatedContainer(
                height: 10,
                width: width * 0.5,
                duration: Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}