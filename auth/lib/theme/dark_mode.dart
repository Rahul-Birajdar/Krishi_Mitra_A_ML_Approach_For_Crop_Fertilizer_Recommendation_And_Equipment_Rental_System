import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.white,
    primary: Colors.green.shade500,
    secondary: Colors.green.shade500,
    inversePrimary: Colors.black,
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.black,
        displayColor: Colors.black,
      ),
);
