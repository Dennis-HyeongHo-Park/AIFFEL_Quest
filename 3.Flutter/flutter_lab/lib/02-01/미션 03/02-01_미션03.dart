// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // void main() {
//   runApp(MyApp());
// }

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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  onPressed() {
    print('클릭 했다. 이좌식아....');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('02-01 미션 03'),
        ),
        // body: const Column(children: [ // 여기서의 const는 정적, 즉 한번 정의된 값을 변경할수 없어 onPressed에서 오류가 발생.
        body: Column(children: [
          const Icon(Icons.heart_broken, size: 100, color: Colors.red),
          const FaIcon(
            FontAwesomeIcons.bell,
            size: 100,
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.alarm,
              size: 100,
            ),
          ),
        ]),
      ),
    );
  }
}
