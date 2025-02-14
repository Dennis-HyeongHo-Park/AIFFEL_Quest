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
          leading: const Icon(Icons.menu),
          title: const Text('플러터 앱 만들기'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: AppContent(),
        ),
      ),
    );
  }
}

class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 중앙에 Button 추가
        ElevatedButton(
          onPressed: () {
            // DEBUG CONSOLE에 출력
            debugPrint('버튼이 눌렸습니다');
          },
          child: const Text('Text'),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30),
        ),
        Stack(
          alignment: Alignment.topLeft,
          children: [
            for (int i = 0; i < 5; i++)
              Container(
                width: 300 - (i * 60).toDouble(),
                height: 300 - (i * 60).toDouble(),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5),
                ),
              ),
          ],
        ),
      ],
    );
  }
}