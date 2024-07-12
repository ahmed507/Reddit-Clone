import 'package:flutter/material.dart';
import 'package:reddit_clone/core/common/constants.dart';

ThemeData darkTheme = ThemeData(
  toggleButtonsTheme: ToggleButtonsThemeData(
    borderRadius: BorderRadius.circular(50),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.white,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
  colorScheme: const ColorScheme.dark(
    primary: redditOrange,
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
