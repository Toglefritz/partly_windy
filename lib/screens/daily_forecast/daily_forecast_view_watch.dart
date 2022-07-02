import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';
import 'package:wear/wear.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_watch_active.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_watch_ambient.dart';

/// View for [DailyForecastRoute] for watch-sized devices.
///
/// Wear OS devices can operate in one of two states: ambient and active.
/// Ambient mode is when the user has not raised the watch and it is, for
/// example, just hanging by the user's side. In this mode, the background
/// is set to black to conserve battery consumption. Ambient mode is mostly
/// passive and contains no interactive UI elements.
///
/// Active mode is when the user is engaged in using the watch and is typically
/// activated by the "raise to wake" gesture. In active mode, a richer UI is
/// used and interactions are implemented.
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
