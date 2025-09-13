import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const CopyShopApp());
}

class CopyShopApp extends StatelessWidget {
  const CopyShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'CopyShop',
      home: AppShell(),
    );
  }
}

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _selectedIndex = 0;

  final List <Widget> _pages = const [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(tabBar: CupertinoTabBar(items: const
    [BottomNavigationBarItem(icon:Icon(CupertinoIcons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile'),
    ]), tabBuilder: (context, index){
      return _pages[index];
    },);
  }
}