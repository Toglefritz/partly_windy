import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';
import 'package:wear/wear.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_watch_active.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_watch_ambient.dart';

/// View for [DailyForecastRoute] for watch-sized devices.
class DailyForecastViewWatch extends StatelessWidget {
  final DailyForecastController state;

  const DailyForecastViewWatch(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (BuildContext context, WearShape shape, Widget? child) {
        return AmbientMode(
          builder: (context, mode, child) {
            return mode == WearMode.active
                ? DailyForecastViewWatchActive(state)
                : DailyForecastViewWatchAmbient(state);
          },
        );
      },
    );
  }
}
