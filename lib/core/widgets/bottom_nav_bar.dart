import 'package:flutter/material.dart';

int _currentIndex = 0;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();

  getIndex() {
    return _currentIndex;
  }
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[800],
      //selected
      selectedItemColor: Colors.white,
      selectedFontSize: 13,
      //unselected
      unselectedFontSize: 10,
      unselectedItemColor: Colors.white70,
      currentIndex: _currentIndex,
      unselectedIconTheme: const IconThemeData(size: 20),
      iconSize: 30,
      onTap: _onPress,
      items: const [
        BottomNavigationBarItem(
          label: "Home1",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Categories",
          icon: Icon(Icons.grid_view),
        ),
        BottomNavigationBarItem(
          label: "My Account",
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }

  void _onPress(int index) {
    // log('ustawiam na ' + index.toString());
    setState(() {
      _currentIndex = index;
    });
  }
}
