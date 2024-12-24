// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Dennis.'),
//           centerTitle: true,
//           leading: Builder(
//             builder: (context) => IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer(); // Drawer를 엽니다.
//               },
//             ),
//           ),
//         ),
//         drawer: SizedBox(
//           width: 150, // 원하는 폭을 지정 (예: 250)
//           child: Drawer(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 DrawerHeader(
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                   ),
//                   child: const Text(
//                     'Menu',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.home),
//                   title: const Text('Home'),
//                   onTap: () {
//                     print('Home 클릭!');
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.settings),
//                   title: const Text('Settings'),
//                   onTap: () {
//                     print('Settings 클릭!');
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.exit_to_app),
//                   title: const Text('Logout'),
//                   onTap: () {
//                     print('Logout 클릭!');
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: Center(
//           child: GestureDetector(
//             child: const Text('Hello. Dennis.'),
//             onTap: () {
//               print(' 클릭! ');
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() {
  runApp(const MenuScreen());
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int _selectedIndex = 0; // BottomNavigationBar의 현재 선택된 인덱스

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
      // 홈 버튼
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else if (index == 1) {
      // 장바구니 버튼
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CartScreen()),
      );
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
                '주류 종류',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
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

// 예제 홈 화면
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          '홈 화면입니다.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// 예제 장바구니 화면
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          '장바구니 화면입니다.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
