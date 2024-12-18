import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'detail_screen.dart';

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
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) => DetailScreen(), settings: settings);
      },
    );
  }
}
