import 'package:flutter/material.dart';
import 'arreAssigment.dart';
import 'themeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// This widget is the root of your application.
  ThemeMode _currentThemeMode = ThemeMode.system; // Default to system

  void _changeTheme(ThemeMode? newMode) {
    setState(() {
      _currentThemeMode = newMode ?? ThemeMode.system; // Handle null value
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
