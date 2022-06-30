import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';
import 'package:wear/wear.dart';

/// View for [DailyForecastRoute] for watch-sized devices while the watch
/// is in an active mode.
class DailyForecastViewWatchAmbient extends StatelessWidget {
  final DailyForecastController state;

  const DailyForecastViewWatchAmbient(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Partly Windy',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
