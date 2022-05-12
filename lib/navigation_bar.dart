import 'package:flutter/material.dart';
import 'main.dart';

class NavBarState extends StatefulWidget {
  const NavBarState({Key? key}) : super(key: key);

  @override
  State<NavBarState> createState() => _NavBarStateState();
}

class _NavBarStateState extends State<NavBarState> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Profile(),
    // Text('Profile Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
            activeIcon: Icon(Icons.home_outlined, color: Colors.teal, size: 30),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital, size: 30),
            label: 'Help',
            activeIcon: Icon(Icons.local_hospital_outlined,
                color: Colors.blueAccent, size: 30),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store, size: 30),
            label: 'Shop',
            activeIcon: Icon(Icons.store_mall_directory_outlined,
                color: Colors.red, size: 30),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 30),
            label: 'Profile',
            activeIcon: Icon(
              Icons.account_circle_outlined,
              size: 30,
              color: Colors.amber,
            ),
            backgroundColor: Colors.white,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5);
  }
}