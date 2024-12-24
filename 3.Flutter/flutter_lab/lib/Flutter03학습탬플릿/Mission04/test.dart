import 'package:flutter/material.dart';

// 원래는 OneScreen에서 다시 TwoScreen으로 못갔는데,
// 돌아갈 수 있게 추가.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final bool _isDeepLink = true;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Test',
      home: Navigator(
        pages: [
          const MaterialPage(child: OneScreen()),   // 뒤로가기 했을때 패이지, 맨앞페이지를 선택
          if (_isDeepLink) const MaterialPage(child: ThreeScreen()) // 첫 화면 패이지, 뒤로가기 했을때 윗 줄에 정의된 페이지로 이동.
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OneScreen'),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 13, 73, 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'OneScreen',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  // TwoScreen으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TwoScreen()),
                  );
                },
                child: const Text('Go to TwoScreen'),
              ),
              ElevatedButton(
                onPressed: () {
                  // TwoScreen으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThreeScreen()),
                  );
                },
                child: const Text('Go to ThreeScreen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TwoScreen'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'TwoScreen',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OneScreen()),
                  );
                },
                child: const Text('Go to OenScreen'),
              ),
              ElevatedButton(
                onPressed: () {
                  // TwoScreen으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThreeScreen()),
                  );
                },
                child: const Text('Go to ThreeScreen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThreeScreen'),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 251, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tree Screen',
                style: TextStyle(
                    color: Color.fromARGB(255, 238, 6, 6), fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  // TwoScreen으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OneScreen()),
                  );
                },
                child: const Text('Go to OneScreen'),
              ),
              ElevatedButton(
                onPressed: () {
                  // TwoScreen으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TwoScreen()),
                  );
                },
                child: const Text('Go to TwoScreen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
