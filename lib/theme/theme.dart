import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    primarySwatch: Colors.pink,
    brightness: Brightness.light,
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
  );
}
