import 'constants.dart';
import 'package:flutter/material.dart';

Color isExpressBusRoute(String routeNumber) {
  return kExpressBusNumbers.contains(routeNumber)
      ? Colors.yellow
      : Colors.white;
}
