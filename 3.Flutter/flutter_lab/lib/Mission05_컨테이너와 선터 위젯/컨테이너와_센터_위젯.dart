import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('How to use the Container'),
      ),
      body: Stack(children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 250,
          height: 250,
          color: Colors.orange,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 50,
          color: const Color.fromARGB(255, 8, 2, 194),
        ),
        Container(
          width: 20,
          height: 20,
          color: Colors.purple,
        ),
      ]),
    ));
  }
}
