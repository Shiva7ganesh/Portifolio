import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shivaportfolio/models/device_model.dart';

List<DeviceModel> devices=[
  DeviceModel(data: Icons.android, device: Devices.android.onePlus8Pro),
  DeviceModel(data: Icons.apple, device: Devices.ios.iPhone13),
  DeviceModel(data: Icons.tablet, device: Devices.android.mediumTablet)
];