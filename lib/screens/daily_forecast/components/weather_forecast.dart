import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';
import 'package:partly_windy/values/strings.dart';

/// Displays the weather forecast with a title.
class WeatherForecast extends StatelessWidget {
  const WeatherForecast({
    Key? key,
    required this.state,
  }) : super(key: key);

  final DailyForecastController state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: FractionallySizedBox(
            widthFactor: 0.6,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                Strings.forecastTitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                state.dailyForecast ?? Strings.noWeather,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
