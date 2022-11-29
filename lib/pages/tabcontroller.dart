import 'package:doasehari2/pages/about.dart';
import 'package:doasehari2/pages/solat.dart';
import 'package:doasehari2/pages/homepage.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class TabControllerPage extends StatefulWidget {
  const TabControllerPage({super.key});

  @override
  State<TabControllerPage> createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  List<Widget> tabs = const [
    HomePage(),
    SholatPage(),
    AboutMe(),  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Doa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_outlined),
            label: 'niat',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pembuat',
          ),
          
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.green[300],
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}