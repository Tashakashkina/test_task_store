import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'application/ui/my_app/my_app.dart';

void main() {
  final app = MyApp();
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: []);

  runApp(app);
}

