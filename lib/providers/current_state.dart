import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shivaportfolio/consts/data.dart';
import 'package:shivaportfolio/screen/home_screen/phone_home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone13;
  String selectedCloud = "assets/images/CloudyBlue.svg";
  Gradient bgGradient = const LinearGradient(
    begin: Alignment.topLeft,
    // end: Alignment(0, -0.4),
    colors: [Colors.blue, Colors.black45],
  );
  int selectedColor = 2; // values can range from 0 to 5
  void changeSelectedDevice(DeviceInfo device) async {
    currentDevice = device;
    notifyListeners();
  }
  bool isMainScreen=true;

  void changeGradient(int index) {
    selectedColor = index;
    bgGradient = colorPalette[index].gradient;
    selectedCloud = colorPalette[index].svgPath;
    notifyListeners();
  }
  Widget currentScreen = const PhoneHomeScreen();
  String? tittle;
  void changePhoneScreen(Widget change,bool isMain,String? title){
    currentScreen=change;
    isMainScreen=isMain;
    tittle=title;
    notifyListeners();
  }
  void launchinbrowser(String link) async{
    Uri url=Uri.parse(link);
    if (await canLaunchUrl(url)){
      await launchUrl(url,mode: LaunchMode.externalApplication);
    }
    else{
      print("Not Found");
    }
  }
}