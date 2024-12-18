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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Icon(Icons.workspace_premium)),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      child: Text('SubQuest C 12')))
            ],
          ),
        ),
        body: Stack(
          children: [
            ElevatedButton(
                onPressed: () {
                  print('버튼이 눌렸습니다.');
              Stack(                child
             ElevatedButton(
              onPressed: () {
                print('버튼이 눌렸습니다.');
              },
              child: const Text('Text')),
                  width: 300,
                    height: 300,
                  ),
                )),
                                                                                                  ))
  ]


          ch