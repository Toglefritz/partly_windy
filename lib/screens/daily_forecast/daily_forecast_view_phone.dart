import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';
import 'package:partly_windy/theme/gradients/time_gradient.dart';
import 'package:partly_windy/screens/daily_forecast/components/weather_forecast.dart';

/// View for [DailyForecastRoute] for phone-sized devices.
class DailyForecastViewPhone extends StatelessWidget {
  final DailyForecastController state;

  const DailyForecastViewPhone(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: TimeGradient(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: WeatherForecast(state: state),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
