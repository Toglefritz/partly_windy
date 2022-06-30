import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';

/// View for [DailyForecastRoute] for phone-sized devices.
class DailyForecastViewPhone extends StatelessWidget {
  final DailyForecastController state;

  const DailyForecastViewPhone(this.state, {Key? key}) : super(key: key);

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