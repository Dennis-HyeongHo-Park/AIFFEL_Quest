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
          title: const Text('Dennis CaFe'),
          centerTitle: true,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Drawer를 엽니다.
              },
            ),
          ),
        ),
        drawer: SizedBox(
          width: 150, // 원하는 폭을 지정 (예: 250)
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 10, 75, 12),
                  ),
                  child: const Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('메 뉴'),
                  onTap: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text('주문목록'),
                  onTap: () {
                    Navigator.pushNamed(context, '/oder');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Logout'),
                  onTap: () {
                    print('Logout 클릭!');
                  },
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: GestureDetector(
            child: const Text('저희 카페에 오신것을 환영합니다.'),
          ),
        ),
      ),
    );
  }
}
