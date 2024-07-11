import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.white,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    brightness: Brightness.dark,
    error: Colors.red,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 20,
    // selectedItemColor: Colors.white,
    // unselectedItemColor: Colors.white70,
    // showSelectedLabels: true,
    // showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      fontSize: 10,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 10,
    ),
  ),
  useMaterial3: true,
);
