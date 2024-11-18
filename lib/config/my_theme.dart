import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    fontFamily: 'Vazir',
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontFamily: "Vazir",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Vazir",
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Vazir',
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontFamily: "Vazir",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Vazir",
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
