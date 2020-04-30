import 'package:flutter/material.dart';
import 'package:winnipegtransit/utilities/schedule_list.dart';

class ByBusRoute extends StatefulWidget {
  static String id = 'by_bus_route';
  @override
  _ByBusRouteState createState() => _ByBusRouteState();
}

class _ByBusRouteState extends State<ByBusRoute> {
  String busRouteNumber;
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
        title: Text('By Bus Router Number'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter in the Bus Route Number',
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        busRouteNumber = value;
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      //TODO HTTP Fetch the bus schedule with the bus route number
                    },
                  ),
                ],
              ),
            ),
          ),
          BusScheduleList(),
        ],
      ),
    );
  }
}
