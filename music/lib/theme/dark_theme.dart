import 'package:flutter/material.dart';

ThemeData DarkMode = ThemeData(
  brightness: Brightness.dark,
  canvasColor: Colors.transparent,
  colorScheme: const ColorScheme.dark(
    background: Colors.black,
    primary: Color.fromRGBO(255, 46, 0, 1),
    secondary: Color.fromRGBO(248, 162, 69, 1),
    inversePrimary: Color.fromRGBO(203, 200, 200, 1),
    onPrimary: Color.fromRGBO(19, 19, 19, 1),
  ),
);
