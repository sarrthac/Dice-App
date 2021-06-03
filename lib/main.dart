import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('left button pressed');
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button pressed');
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
