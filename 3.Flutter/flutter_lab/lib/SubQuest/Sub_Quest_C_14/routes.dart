import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'MenuScreen.dart';
import 'MyOder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/menu': (context) => const MenuScreen(),
        '/oder': (context) => MyOrder(),
      },
    );
  }
}
