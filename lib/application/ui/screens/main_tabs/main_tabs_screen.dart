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
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), 
            label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), 
            label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), 
            label: 'Home'),
          ],
        )
        ],
      ),
    );
    
  }
}