import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );
}
