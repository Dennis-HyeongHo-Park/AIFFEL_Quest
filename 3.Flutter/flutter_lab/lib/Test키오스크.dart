import 'package:flutter/material.dart';

void main() {
  runApp(MenuScreen());
}

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tab Test'),
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(text: 'One'),
              Tab(text: 'Two'),
              Tab(text: 'Three'),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            Center(
              child: Text(
                'One Screen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Two Screen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Three Screen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
