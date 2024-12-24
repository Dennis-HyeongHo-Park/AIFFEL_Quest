import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          centerTitle: true,
        ),
        body: Container(
          color: const Color.fromARGB(255, 13, 76, 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HomeScreen',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: const Text('Detail Screen'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
