import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext constext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ElevatedButton'),
          centerTitle: true, // appBar 문구 가운데로.,
        ),
        body: Center(
          // Center는 가운데로 정렬하는건데 만약 하지 않는다면 바로 Column / Row를 사용.
          child: Column(
              // Center가아니여도 Column/Row 를 사용하여도 됨.
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Column하면 세로로, Row하면 가로로 출력.
                ElevatedButton(
                  onPressed: () {
                    // 1번 버튼
                    print('나 위');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.blue)),
                  child: Text('Click Me'),
                ),
                const ElevatedButton(
                  onPressed: null, // 비활성 버튼
                  child: Text('Disabled Button'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // 2번 버튼
                    print('나 아래');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.red)),
                  child: Text('Click Me'),
                )
              ]),
        ),
      ),
    );
  }
}

