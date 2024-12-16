// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   bool enabled = false;
// //   String stateText = 'disable';

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Center(child: Text('못 바꿔??.')),
// //       ),
// //     );
// //   }
// // }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   bool enabled = false;
//   String stateText = 'disavle';

//   MyApp({super.key});

//   void changeCheck() {
//     if (enabled) {
//       stateText = 'disable';
//       enabled = false;
//     } else {
//       stateText = 'enable';
//       enabled = true;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stateless Test'),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 icon: (enabled ? Icon(Icons.check_box, size:20,):
//                       Icon(Icons.check_box_outline_blank, size: 20,)),
//                 color: Colors.red,
//                 onPressed: changeCheck,
//               ),
//               Container(
//                 padding: EdgeInsets.only(left: 16),
//                 child: Text('$stateText', style: TextStyle(fontSize: 30,
//                             fontWeight: FontWeight.bold),),
//               ),
//             ],
//           ),
//         )
//       )
//     );

//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const StaticScreenApp());
}

class StaticScreenApp extends StatelessWidget {
  const StaticScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('정적 화면'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            '이 화면은 변경되지 않습니다!',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}