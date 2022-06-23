import 'package:flutter/material.dart';

import 'package:partly_windy/screens/home/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController state;

  const HomeView(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Text('Partly Windy'),
      ),
    );
  }
}