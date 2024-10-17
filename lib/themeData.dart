import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  hintColor: Colors.blueAccent, // Deprecated, use colorScheme.secondary
  colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
  ),
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  ),
  // ... other properties like appBarTheme, buttonTheme, etc.
);


final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  hintColor: Colors.deepPurpleAccent,  // Deprecated, use colorScheme.secondary
  colorScheme: const ColorScheme.dark(
      primary: Colors.deepPurple,
      secondary: Colors.deepPurpleAccent,
      surface: Color(0xFF222225)
  ),
  scaffoldBackgroundColor:  const Color(0xFF222225), // Dark grey
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
  // ... other properties
);