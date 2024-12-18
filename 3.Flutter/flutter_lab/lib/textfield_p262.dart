import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('02-02 미션 03'),
          ),
          body: TestScreen()),
    );
  }
}

class TestScreen extends StatefulWidget {
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
        SizedBox(height: 5),
        Text('사용자 이름'),
        TextField(
          style: TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            hintText: 'Hint Text',
            helperText: '데이터를 입력하세요.',
            counterText: '$textCounter characters',
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 5,
          maxLines: 5,
        ),
        SizedBox(height: 5),
        Text('이메일 주소'),
        TextField(
          style: TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
