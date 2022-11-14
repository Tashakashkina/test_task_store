import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Color.fromRGBO(1, 0, 53, 1), selectedItemColor: Color.fromRGBO(255, 110, 78, 1), unselectedItemColor: Colors.white),
    
    );
  
}