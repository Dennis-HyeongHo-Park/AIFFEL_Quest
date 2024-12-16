import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(              // 머터리얼 디자인 적용
      home: Scaffold(                // 화면 구고 설계
        appBar: AppBar(              // 화면 위쪽 앱바 구성.
          centerTitle: true,         // 화면 위쪽 앱바 구성 title text 가운데로
          title: const Text('Hello, Dennis'),  // 앱바의 제목
        ),
        body: Center(child: GestureDetector(child: const Text('Hello, World'))),  // GestureDetector 사용자 이벤트 처리/ text 본문에 출력
      ),
    );
  }
}
