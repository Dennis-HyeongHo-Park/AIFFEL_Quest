import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String logoImagePath;

  const HomeScreen({
    super.key,
    required this.logoImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // 로고 영역
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/images/ggtdd.png',
                  width: 300,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              // 텍스트 영역
              const Text(
                'AI로 완벽한 GTD 경험',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              // 새로운 이미지 영역
              Image.asset(
                'assets/images/Ellipse_43.png',
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
