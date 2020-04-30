import 'package:flutter/material.dart';
import 'package:winnipegtransit/screens/by_bus_route.dart';
import 'package:winnipegtransit/utilities/constants.dart';
import 'package:winnipegtransit/screens/splash_screen.dart';
import 'package:winnipegtransit/screens/main_menu.dart';
import 'package:winnipegtransit/screens/by_stop_number.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        MainMenu.id: (context) => MainMenu(),
        ByStopNumber.id: (context) => ByStopNumber(),
        ByBusRoute.id: (context) => ByBusRoute(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColour,
      ),
    );
  }
}
