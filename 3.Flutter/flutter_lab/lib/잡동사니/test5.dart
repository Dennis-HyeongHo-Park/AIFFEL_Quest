import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('02-02 미션 03'),
        ),
        body: const TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  int textCounter1 = 0;
  int textCounter2 = 0;

  @override
  void initState() {
    super.initState();
    controller1.addListener(() {
      setState(() {
        textCounter1 = controller1.text.length;
      });
    });
    controller2.addListener(() {
      setState(() {
        textCounter2 = controller2.text.length;
      });
    });
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build ....');
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('TextField 1'),
          TextField(
            style: const TextStyle(fontSize: 15.0),
            controller: controller1,
            decoration: InputDecoration(
              labelText: 'Data 1',
              prefixIcon: const Icon(Icons.input),
              border: const OutlineInputBorder(),
              hintText: 'Enter first text here',
              helperText: '데이터를 입력하세요.',
              counterText: '$textCounter1 characters',
            ),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20), // TextField 간 간격 추가
          const Text('TextField 2'),
          TextField(
            style: const TextStyle(fontSize: 15.0),
            controller: controller2,
            decoration: InputDecoration(
              labelText: 'Data 2',
              prefixIcon: const Icon(Icons.input),
              border: const OutlineInputBorder(),
              hintText: 'Enter second text here',
              helperText: '또 다른 데이터를 입력하세요.',
              counterText: '$textCounter2 characters',
            ),
            textInputAction: TextInputAction.search,
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
