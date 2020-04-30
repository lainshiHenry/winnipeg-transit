import 'package:flutter/material.dart';
import 'schedule_list_item.dart';

class BusScheduleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
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
          ScheduleListItem(
            routeNumber: '59',
            routeName: 'Portage & Garry',
            arrivalTime: '01:50',
          ),
          ScheduleListItem(
            routeNumber: '59',
            routeName: 'Portage & Garry',
            arrivalTime: '01:50',
          ),
          ScheduleListItem(
            routeNumber: '59',
            routeName: 'Portage & Garry',
            arrivalTime: '01:50',
          ),
          ScheduleListItem(
            routeNumber: '59',
            routeName: 'Portage & Garry',
            arrivalTime: '01:50',
          ),
          ScheduleListItem(
            routeNumber: '59',
            routeName: 'Portage & Garry',
            arrivalTime: '01:50',
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
