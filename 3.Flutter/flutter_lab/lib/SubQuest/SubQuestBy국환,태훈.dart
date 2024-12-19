import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱의 시작점
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 상태가 변하지 않는 정적 위젯
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 머티리얼 디자인을 사용하는 앱
      home: Scaffold(
        // 기본적인 앱 구조를 제공
        appBar: AppBar(
          // 상단 앱바
          leading: const Icon(Icons.alarm), // 좌측 알람 아이콘
          title: const Text('플러터 앱 만들기기'), // 앱바 제목
          centerTitle: true, // 제목 중앙 정렬
          backgroundColor: Colors.blue, // 앱바 배경색
        ),
        body: Center(
          // 본문을 중앙 정렬
          child: Column(
              // 세로로 위젯 배치
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 세로 방향 균등 배치
              children: [
                ElevatedButton(
                  // 버튼 위젯
                  onPressed: () {
                    // 버튼 클릭 시 실행될 함수
                    print('버튼이 눌렸습니다.');
                  },
                  child: const Text('Text'), // 버튼 텍스트
                ),
                Stack(
                  // 위젯들을 겹쳐서 배치
                  children: [
                    // Stack에 포함될 위젯들
                    Container(
                      // 300x300 빨간색 상자
                      width: 300,
                      height: 300,
                      color: Colors.red,
                    ),
                    Container(
                      // 240x240 주황색 상자
                      width: 240,
                      height: 240,
                      color: Colors.orange,
                    ),
                    Container(
                      // 180x180 노란색 상자
                      width: 180,
                      height: 180,
                      color: Colors.yellow,
                    ),
                    Container(
                      // 120x120 초록색 상자
                      width: 120,
                      height: 120,
                      color: Colors.green,
                    ),
                    Container(
                      // 60x60 파란색 상자
                      width: 60,
                      height: 60,
                      color: Colors.blue,
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
