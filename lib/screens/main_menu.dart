import 'package:flutter/material.dart';
import 'package:winnipegtransit/screens/by_bus_route.dart';
import 'package:winnipegtransit/screens/by_stop_number.dart';
import 'package:winnipegtransit/utilities/constants.dart';

class MainMenu extends StatefulWidget {
  static String id = 'main_menu';
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Winnipeg Transit Bus Schedule',
          style: TextStyle(
            color: kSecondaryWhiteTextColour,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MenuOptionButton(
                buttonText: 'Bus Stop #',
                onPressed: () {
                  Navigator.pushNamed(context, ByStopNumber.id);
                },
              ),
              MenuOptionButton(
                buttonText: 'Bus Route #',
                onPressed: () {
                  Navigator.pushNamed(context, ByBusRoute.id);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MenuOptionButton(
                buttonText: 'Option 3',
              ),
              MenuOptionButton(
                buttonText: 'Option 4',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuOptionButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  MenuOptionButton({this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: kPrimaryColour,
      textColor: kSecondaryWhiteTextColour,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      onPressed: onPressed,
      child: Column(
        children: <Widget>[
          Text('Search by'),
          Text(
            buttonText,
          ),
        ],
      ),
    );
  }
}
