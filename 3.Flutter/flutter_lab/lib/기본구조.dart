import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dennis.'),
        ),
        body: Center(
            child: GestureDetector(
          child: const Text('Hello. Dennis.'),
          onTap: () {
            print(' 클릭! ');
          },
        )),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp()
//   }
// }