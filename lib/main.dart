import 'package:flutter/material.dart';
import 'utilities/constants.dart';
import 'screens/splash_screen.dart';
import 'screens/main_menu.dart';
import 'screens/schedules_list.dart';

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
        SchedulesList.id: (context) => SchedulesList(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColour,
      ),
    );
  }
}
