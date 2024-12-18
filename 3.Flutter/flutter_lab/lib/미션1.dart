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
          title: const Text('미션 1'),
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                NumberBox(7),
                NumberBox(8),
                NumberBox(9),
              ],
            ),
            Row(
              children: [
                NumberBox(4),
                NumberBox(5),
                NumberBox(6),
              ],
            ),
            Row(
              children: [
                NumberBox(1),
                NumberBox(2),
                NumberBox(3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NumberBox extends StatelessWidget {
  final int number;

  const NumberBox(this.number, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 80,
      height: 80,
      color: Colors.yellow, // 배경색 투명 설정
      child: Center(
        child: Text(
          '[$number]',
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black, // 텍스트는 검정색
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
