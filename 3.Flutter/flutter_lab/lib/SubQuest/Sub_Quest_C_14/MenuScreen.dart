import 'package:flutter/material.dart';

void main() {
  runApp(MenuScreen());
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pushNamed(context, '/home'); // 홈으로 이동
    } else if (index == 1) {
      Navigator.pushNamed(context, '/oder'); // 장바구니(주문)으로 이동
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu Screen'),
          centerTitle: true,
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(text: 'Coffee'),
              Tab(text: '차(tea)'),
              Tab(text: '쿠 키 / 빵'),
              Tab(text: '주 류'),
            ],
          ),
        ),
        //add........................
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            Center(
              child: Text(
                '커피 종류',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                '차 종류',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                '쿠키 / 빵 종류',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                ' 주류 종류',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '장바구니',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
