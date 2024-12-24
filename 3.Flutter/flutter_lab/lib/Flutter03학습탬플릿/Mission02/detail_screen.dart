import 'package:flutter/material.dart';

void main() {
  runApp(const DetailScreen());
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String arg = ModalRoute.of(context)?.settings.arguments as String;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DetailScreen'),
          centerTitle: true,
        ),
        body: Container(
          color: const Color.fromARGB(255, 13, 76, 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  arg,
                  style: const TextStyle(color: Colors.red, fontSize: 20),
                ),
                const Text(
                  'Detail Screen',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, '/home');
                  },
                  child: const Text('뒤로가기'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
