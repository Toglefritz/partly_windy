import 'package:flutter/material.dart';

/// Build [ThemeData] for [Brightness.light].
ThemeData buildLightTheme() {
  return ThemeData(
    primarySwatch: Colors.pink,
    brightness: Brightness.light,
  );
}

/// Build [ThemeData] for [Brightness.dark].
ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
  );
}
