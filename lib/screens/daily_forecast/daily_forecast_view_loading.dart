import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';

/// View for [DailyForecastRoute] while the forecast is loading.
///
/// This Widget displays a simple loading indicator while the app waits
/// for a forecast.
class DailyForecastViewLoading extends StatelessWidget {
  const DailyForecastViewLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColorLight,
        ),
      ),
    );
  }
}
