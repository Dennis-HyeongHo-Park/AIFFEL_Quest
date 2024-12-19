import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mission 04'),
          centerTitle: true,
        ),
        body: Column(children: [
          GestureDetector(
            child: Image.network(
                'https://i.namu.wiki/i/cugmpEcWiikEMWNvgNra83HkV4a5gCUZqwPmPGAkloa2rfxW9CSL0nnff7pTJzYUW52-2AjsTmt7Cl9fPtULcfXvdY3pZQPi06s7k_s0a2mDcWb1lDN6VUtErOYU5LEDts-vgEKQHVPsQ1nNmm1Z1Q.webp'),
            onTap: () {
              print(' 삐 까 츄~ ');
            },
          ),
          ElevatedButton(
            onPressed: () {
              print(' 클릭 ');
            },
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(Colors.yellow)),
            child: Text('Click Me'),
          ),
        ]),
      ),
    );
  }
}
