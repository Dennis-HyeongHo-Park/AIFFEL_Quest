import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('02-01 미션 03'),
//         ),
//         body: const Center(
//           child: Icon(
//             IconData(0xe072, fontFamily: 'MaterialIcons'),
//             size: 150,
//             color: Color.fromARGB(255, 34, 102, 36),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  onPressed() {
    print('*****클릭 확인*****');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('02-01 미션 03'),
        ),
        body: Center(
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              IconData(0xe072, fontFamily: 'MaterialIcons'),
              size: 150,
              color: Color.fromARGB(255, 34, 102, 36),
            ),
          ),
        ),
      ),
    );
  }
}


// 실행을하면 클릭위치가 중앙의 아람이 아닌, 중심을 기준으로 우측 상단을 클릭하여야 된다.
// 이유는 .. 아직 잘 모르겠다.