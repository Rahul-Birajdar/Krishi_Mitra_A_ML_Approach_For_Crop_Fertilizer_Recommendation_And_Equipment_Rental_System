import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.green.shade500,
    secondary: Colors.green.shade500,
    inversePrimary: Colors.black,
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
  ),
);
