import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'DetailScreen.dart';
import 'SettingsScreen.dart';

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
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailScreen(),
        '/settings': (conetxt) => SettingsScreen(),
      },
    );
  }
}
