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
          title: const Text('이미지출력구조'),
        ),
        body: const Column(
          children: [
            // Image.asset('images/icon1.jpg'),
            // Image.asset('images/icon2.jpg'),
            // Image.asset('images/icon3.jpg'), 
            // 앳셋을 활용할 때

            // Image(image: AssetImage('images/icon/user/png'),
            // 이미지 출력

            // Image(image: ResizeImage(AssetImage('images/icon/user/png'), width: 70, height: 80)),
            // 이미지 크기 변경
// 
            Image(image: NetworkImage(('https://flutter.github.io....'),
            // 네트워커의 이미지 가져오기 (인터넷에서)
              ),
             ),
            ),
          ],
        ),
      ),
    );
  }
}
