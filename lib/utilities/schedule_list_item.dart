import 'package:flutter/material.dart';
import 'package:winnipegtransit/utilities/functions.dart';

class ScheduleListItem extends StatelessWidget {
  final String routeNumber;
  final String routeName;
  final String arrivalTime;

  ScheduleListItem({this.routeNumber, this.routeName, this.arrivalTime});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        routeNumber,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          backgroundColor: isExpressBusRoute(routeNumber),
        ),
      ),
      title: Text(
        routeName,
      ),
      trailing: Text(
        arrivalTime,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
