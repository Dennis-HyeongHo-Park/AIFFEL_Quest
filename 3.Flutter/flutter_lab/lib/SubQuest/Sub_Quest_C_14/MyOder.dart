import 'package:flutter/material.dart';

void main() {
  runApp(MyOrder());
}

class MyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Order'),
          centerTitle: true,
        ),
        body: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: Text('주문 목록'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_circle),
              label: '주 문',
            ),
          ],
        ),
      ),
    );
  }
}
