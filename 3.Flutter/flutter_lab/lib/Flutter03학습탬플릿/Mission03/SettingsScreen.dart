import 'package:flutter/material.dart';

void main() {
  runApp(const SettingsScreen());
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Setting Screen'),
          centerTitle: true,
        ),
        body: Container(
          color: const Color.fromARGB(255, 13, 76, 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Settings Screnn',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text('Go Home'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: const Text('Detail Page'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
