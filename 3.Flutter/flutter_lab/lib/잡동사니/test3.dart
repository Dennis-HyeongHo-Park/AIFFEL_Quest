import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 500,
              height: 500,
              color: Colors.red, // 빨간색 컨테이너
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Text('Dennis'),
              
            ),
            const Positioned(
              right: 30,
              bottom: 30,
              child: Text('Hello, World'),
            )
          ],
        ),
      ),
    ),
  );
}
