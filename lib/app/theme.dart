import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() => ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white, // bar background
      selectedItemColor: Colors.green.shade700, // active icon & label
      unselectedItemColor: Colors.grey.shade600, // inactive icons
      showUnselectedLabels: true, // if you want labels always visible
      type: BottomNavigationBarType.fixed, // keep all 5 tabs visible
    ),
  );
}
