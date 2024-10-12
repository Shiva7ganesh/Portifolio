import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';

class CurrentState extends ChangeNotifier{

  DeviceInfo currentDevice = Devices.ios.iPhone13;
  void changeSelectedDevice(DeviceInfo device){
    currentDevice=device;
    notifyListeners();
  }
}