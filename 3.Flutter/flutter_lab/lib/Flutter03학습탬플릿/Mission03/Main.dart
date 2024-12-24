import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'DetailScreen.dart';
import 'SettingsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
        '/settings': (conetxt) => const SettingsScreen(),
      },
    );
  }
}
