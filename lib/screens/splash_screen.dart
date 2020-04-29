import 'package:flutter/material.dart';
import 'package:winnipegtransit/screens/main_menu.dart';
import 'package:winnipegtransit/utilities/constants.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, MainMenu.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColour,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: Image.asset(
                'assets/images/Winnipeg_Transit_Round_Blue_Logo_bigger.png'),
          ),
          Flexible(
            //TODO Display Henry Logo
            child: Image.asset(
                'assets/images/Winnipeg_Transit_Round_Blue_Logo_bigger.png'),
          ),
        ],
      ),
    );
  }
}
