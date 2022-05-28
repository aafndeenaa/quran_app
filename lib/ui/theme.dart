import 'package:flutter/material.dart';

class MyTheme {
  static const colorBlack = Color.fromARGB(255, 36, 36, 36);
  static const colorGold = Color.fromARGB(255, 183, 147, 95);
  static var lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: colorGold,
        selectedItemColor: colorBlack,
        unselectedItemColor: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: colorGold,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: colorBlack),
    ),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        color: colorBlack,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      headline1: TextStyle(
        color: colorBlack,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
  );
}
