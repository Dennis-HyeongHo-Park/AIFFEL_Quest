import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext conext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('위젯 배치 태스트'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // 양 끝과 가운데에 균등한 간격
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.green),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // 각 컨터이너간 균등한 간격
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.green),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, //앞뒤 공백을 균등한 크기로 설정.
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.green),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//  boydy에 여러게의 Row를 사용하기 위해선, Column이나 다른 위젯으로 감싸야한다.