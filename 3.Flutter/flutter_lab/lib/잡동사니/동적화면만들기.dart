// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildVontext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stateful Test'),
//         ),
//         body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyWidgetState();
//   }
// }

// class _MyWidgetState extends State<MyWidget> {
//   bool enabled = false;
//   String stateText = 'disable';

//   void changeCheck() {
//     setState(() {
//       if (enabled) {
//         stateText = 'disable';
//         enabled = false;
//       } else {
//         stateText = 'enable';
//         enabled = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(

//     )
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(const DynamicScreenApp());
}

class DynamicScreenApp extends StatelessWidget {
  const DynamicScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DynamicScreen(),
    );
  }
}

class DynamicScreen extends StatefulWidget {
  const DynamicScreen({super.key});

  @override
  _DynamicScreenState createState() => _DynamicScreenState();
}

class _DynamicScreenState extends State<DynamicScreen> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++; // 상태 변경 -> 화면 업데이트
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('동적 화면'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '버튼을 누른 횟수:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('숫자 증가'),
            ),
          ],
        ),
      ),
    );
  }
}