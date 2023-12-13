import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Returns an int that will multiply the font size to mage the text responsive
double get_multiplier(BuildContext context){
  var deviceType = getDeviceType(MediaQuery.of(context).size);

  double multiplier = 0;

  switch(deviceType) {
    case DeviceScreenType.desktop:
      multiplier = 1;
      break;
    case DeviceScreenType.tablet:
      multiplier = 0.9;
      break;
    case DeviceScreenType.mobile:
      multiplier = 0.75;
      break;
    default:
      break;
  }

  return multiplier;
}