import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winnipegtransit/utilities/constants.dart';
import 'package:winnipegtransit/utilities/functions.dart';

class SchedulesList extends StatefulWidget {
  static String id = 'schedule_list';
  @override
  _SchedulesListState createState() => _SchedulesListState();
}

class _SchedulesListState extends State<SchedulesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Bus Schedules'),
      ),
      body: ListView(
        children: <Widget>[
          ScheduleListItem(
            routeNumber: '55',
            routeName: 'U of Winnipeg via Meadowood',
            arrivalTime: '23:59',
          ),
          ScheduleListItem(
            routeNumber: '55',
            routeName: 'U of Winnipeg via Dakota',
            arrivalTime: '00:24',
          ),
          ScheduleListItem(
            routeNumber: '55',
            routeName: 'U of Winnipeg via Meadowood',
            arrivalTime: '00:51',
          ),
          ScheduleListItem(
            routeNumber: '55',
            routeName: 'Portage & Garry',
            arrivalTime: '01:20',
          ),
          ScheduleListItem(
            routeNumber: '59',
            routeName: 'Portage & Garry',
            arrivalTime: '01:50',
          ),
        ],
      ),
    );
  }
}

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
