import 'package:flutter/material.dart';
import 'homePage.dart';
import 'more.dart';
import 'package:iris_mockup/categories.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  static String id = 'tab-view';
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    Categories(),
    More(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    // _pageController.jumpToPage(index);
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screens,
        onPageChanged: _onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
        selectedItemColor: Color.fromRGBO(100, 120, 210, 1),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

class HelpButton extends StatefulWidget {
  @override
  _HelpButtonState createState() => _HelpButtonState();
}

class _HelpButtonState extends State<HelpButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.chat_bubble, color: Colors.white),
        backgroundColor: Color.fromRGBO(103, 111, 210, 1),
      ),
    );
  }
}
