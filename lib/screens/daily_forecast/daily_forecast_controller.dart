import 'package:flutter/material.dart';
import 'package:partly_windy/openai/completions_api.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_route.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_phone.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_watch.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_view_loading.dart';

/// Controller for [DailyForecastRoute].
///
/// This controller handles three operations:
///   1.  The controller checks if there is a forecast stored in
///       shared_preferences for the current day. If so, that value is set
///       as the [dailyForecast] value.
///   2.  If there is no forecast already stored, the controller uses the
///       [CompletionsApi] to get a "forecast" using the OpenAI API.
///   3.  Once a forecast has been obtained using either step 1 or step 2,
///       the controller calls a view Widget appropriate for the current
///       host device screen size.
class DailyForecastController extends State<DailyForecastRoute> {
  String? dailyForecast;

  @override
  Widget build(BuildContext context) {
    // Return the view appropriate for the device screen size
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        debugPrint('Host device screen width: ${constraints.maxWidth}');

        return FutureBuilder(
          future:
              CompletionsApi.getForecast(constraints.maxWidth < 300 ? 6 : 9),
          builder: (BuildContext context, AsyncSnapshot<String?> forecast) {
            if (forecast.hasData) {
              dailyForecast = forecast.data;

              // Watch-sized device
              if (constraints.maxWidth < 300) {
                return DailyForecastViewWatch(this);
              }
              // Phone-sized device
              else {
                return DailyForecastViewPhone(this);
              }
            } else {
              // Display a loading indicator while waiting for the forecast
              return const DailyForecastViewLoading();
            }
          },
        );
      },
    );
  }
}
