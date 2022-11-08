import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Store',
      theme: AppTheme.light,
    );
    
  }
}