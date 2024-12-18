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
          title: const Align(
            alignment: Alignment.center,
            child: Text('02-01 미션 02'),
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 36, 84, 37),
          alignment: Alignment.center,
          child: Image.network(
              'https://www.asc-csa.gc.ca/images/recherche/tiles/d0927ef1-27a7-4aa5-b597-599b0570451b.jpg',
              width: 400,
              height: 300,
              fit: BoxFit.contain),
        ),
      ),
    );
  }
}
