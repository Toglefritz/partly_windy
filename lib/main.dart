import 'package:flutter/material.dart';
import 'package:partly_windy/screens/home/home_route.dart';
import 'package:partly_windy/theme/theme.dart';

void main() {
  runApp(const PartlyWindy());
}

class PartlyWindy extends StatelessWidget {
  const PartlyWindy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Partly Windy',
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: ThemeMode.system,
      home: const HomeRoute(),
    );
  }
}
