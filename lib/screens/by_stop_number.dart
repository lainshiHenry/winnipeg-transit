import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winnipegtransit/utilities/schedule_list.dart';

class ByStopNumber extends StatefulWidget {
  static String id = 'by_stop_number';
  @override
  _ByStopNumberState createState() => _ByStopNumberState();
}

class _ByStopNumberState extends State<ByStopNumber> {
  Notification test;
  String busStopNumber;

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
        title: Text('By Stop Number'),
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
                        hintText: 'Enter in the Bus Stop Number',
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        busStopNumber = value;
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      //TODO HTTP Fetch the bus schedule with the bus stop number
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
