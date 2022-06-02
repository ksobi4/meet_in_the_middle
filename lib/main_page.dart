// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mitm4/core/theme.dart';

import 'core/widgets/custom_animated_bottom_bar.dart';
import 'features/chat/presentation/chat_home_page.dart';
import 'features/delay/presentation/delay_page.dart';
import 'features/home/presentation/home_page.dart';
import 'features/profile/presentation/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _getBody() {
    List<Widget> pages = const [
      HomePage(),
      DelayPage(),
      ChatHomePage(),
      ProfilePage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 65,
      backgroundColor: AppColors.darkNavBarBg,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.access_time_outlined),
          title: Text('Delay'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Chat',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person_outline_sharp),
          title: Text('Profile'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
