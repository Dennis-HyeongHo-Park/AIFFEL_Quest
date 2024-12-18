import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TEST'),
        ),
        body: const Column(
          children: [
            Text('Hello, Dennis'),
            Text(
              'How are You?',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
