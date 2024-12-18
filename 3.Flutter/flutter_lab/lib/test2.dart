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
          title: Text('미션02'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300, // 너비 설정
            height: 200, // 높이 설정
            color: Colors.blue, // 파란색 배경


            child: Align(
              alignment: Alignment.bottomRight, // 오른쪽 아래 정렬
              child: Padding(
                padding: EdgeInsets.all(8.0), // 약간의 여백 추가
               
               
                child: Text(
                  'Hello, Flutter!',
                  style: TextStyle(fontSize: 24, color: Colors.white), // 흰색 텍스트
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
