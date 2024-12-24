import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'detail_screen.dart';

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
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) => const DetailScreen(), settings: settings);
      },
    );
  }
}
