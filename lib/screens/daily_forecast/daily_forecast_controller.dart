import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_route.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_phone.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_watch.dart';

/// Controller for [DailyForecastRoute].
class DailyForecastController extends State<DailyForecastRoute> {
  @override
  Widget build(BuildContext context) {
    // The screen width of the host device
    double screenWidth = MediaQuery.of(context).size.width;
    debugPrint('Host device screen width: $screenWidth');

    // Return the view appropriate for the device screen size
    if (screenWidth < 300) {
      return DailyForecastViewWatch(this);
    } else {
      return DailyForecastViewPhone(this);
    }
  }
}
