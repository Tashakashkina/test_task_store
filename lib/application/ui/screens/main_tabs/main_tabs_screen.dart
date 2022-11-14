import 'package:flutter/material.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
        Expanded(
          child: Container(),
        ),
        BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Image.asset('assets/icons/1/tabbar_bag.png'), 
            label: ''),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/1/tabbar_heart.png'), 
            label: ''),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/1/tabbar_person.png'), 
            label: ''),
          ],
        )
        ],
      ),
    );
    
  }
}