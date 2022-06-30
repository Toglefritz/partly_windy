import 'package:flutter/material.dart';
import 'package:partly_windy/screens/daily_forecast/daily_forecast_controller.dart';

/// Based on the host device's home screen, shows different versions of the
/// app's [DailyForecastView]: Android phone version, Wear OS version, or
/// large screen version (tablets, desktops, and so on).
///
/// The Partly Windy app is adaptive to the size of the host device's screen.
/// It can run on screen sizes ranging from smartwatches to desktops. The app
/// utilizes responsive designs to scale UI elements depending upon the screen
/// size but it also uses entirely different layouts for different classes
/// of devices. Smartwatches display a simplified, higher contrast UI best
/// suited for small screens that are interacted with only briefly. Phones
/// display a more complex UI featuring a number of tabs for displaying
/// different information. Desktops and web browsers use a UI that displays
/// more information on a single page to take advantage of the large amount of
/// space on the screen.
class DailyForecastRoute extends StatefulWidget {
  const DailyForecastRoute({Key? key}) : super(key: key);

  @override
  State<DailyForecastRoute> createState() => DailyForecastController();
}