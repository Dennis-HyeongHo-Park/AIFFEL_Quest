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
          backgroundColor: Colors.blue,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(child: const Icon(Icons.workspace_premium)),
            Expanded(
                child: Container(
                    alignment: Alignment.center, child: const Text('SubQuest C 12')))
          ]),
        ),
        body: Stack(
          children: [
            Align(
              alignment: const Alignment(0.0, -0.35),
              child: ElevatedButton(
                onPressed: () {
                  print('버튼이 눌렸습니다.');
                },
                child: const Text('Text'),
              ),
            ),
            Align(
                alignment: const Alignment(0.0, 0.0),
                child: Container(width: 150, height: 150, color: Colors.red)),
          ],
          //
        ),
      ),
    );
  }
}
