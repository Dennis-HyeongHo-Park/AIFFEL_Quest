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
          body: const TestScreen()),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  final controller = TextEditingController();
  int textCounter = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _printValue() {
    print('_printValue(): ${controller.text}');
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build ....');
    return Column(
      children: [
        const SizedBox(height: 5),
        const Text('사용자 이름'),
        TextField(
          style: const TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: const Icon(Icons.input),
            border: const OutlineInputBorder(),
            hintText: 'Hint Text',
            helperText: '데이터를 입력하세요.',
            counterText: '$textCounter characters',
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 5,
          maxLines: 5,
        ),
        const SizedBox(height: 5),
        const Text('이메일 주소'),
        TextField(
          style: const TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: const Icon(Icons.input),
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: 'Hint Text',
            helperText: '데이터를 입력하세요.',
            counterText: '$textCounter characters',
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 5,
          maxLines: 5,
        ),
      ],
    );
  }
}
