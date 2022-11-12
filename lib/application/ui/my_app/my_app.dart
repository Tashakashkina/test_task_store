import 'package:e_commerce/application/ui/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Store',
      theme: AppTheme.light,
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
    
  }
}