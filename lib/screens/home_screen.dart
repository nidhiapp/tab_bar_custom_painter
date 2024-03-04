import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/screens/home.dart';
import 'package:tab_bar_custom_painter/screens/package_screen.dart';
import 'package:tab_bar_custom_painter/screens/profile_page.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
   const Home(),
   const ProfileScreen(),
   const PackageScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_on_clipboard_fill), label: ''),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.red,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
          
      ),
    );
  }
}