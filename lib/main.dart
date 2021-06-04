import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade700,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red.shade700,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  // const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonClicked = 1;
  int rightButtonClicked = 4;
  void changeDiceFace() {
    setState(() {
      leftButtonClicked = Random().nextInt(6) + 1;
      rightButtonClicked = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/dice$leftButtonClicked.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/dice$rightButtonClicked.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
