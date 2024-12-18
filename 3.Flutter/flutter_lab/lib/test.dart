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
          title: Text('Hello, Flutter!'),

          
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,  // 너비 설정
            height: 200, // 높이 설정
            color: Colors.blue, // 파란색 배경

            
            child: Center(


              
              child: Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24, color: Colors.white), // 흰색 텍스트
              ),
            ),
          ),
        ),
      ),
    );
  }
}
