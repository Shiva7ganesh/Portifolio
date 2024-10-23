
import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shivaportfolio/models/app_model.dart';
import 'package:shivaportfolio/models/color_model.dart';
import 'package:shivaportfolio/models/device_model.dart';
import 'package:shivaportfolio/screen/miniprojects/about/about.dart';

List<DeviceModel> devices=[
  DeviceModel(data: Icons.android, device: Devices.android.onePlus8Pro),
  DeviceModel(data: Icons.apple, device: Devices.ios.iPhone13),
  DeviceModel(data: Icons.tablet, device: Devices.android.mediumTablet)
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/CloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/CloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/CloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/CloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/CloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps=[
  AppModel(title:"about", color: Colors.white,icon: Icons.ac_unit_outlined,screen: const About()),
  AppModel(title:"Linkedin", color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedin),
  AppModel(title:"App Store", color: Colors.white,icon: Icons.ac_unit_outlined,link: appstore),
  AppModel(title:"Github", color: Colors.white,icon: Icons.ac_unit_outlined,link: github),
  AppModel(title:"Codechef", color: Colors.white,icon: Icons.ac_unit_outlined,link: codechef),
  AppModel(title:"Leetcode", color: Colors.white,icon: Icons.ac_unit_outlined,link: leetcode),
  AppModel(title:"Codeforces", color: Colors.white,icon: Icons.ac_unit_outlined,link: codeforces),
  AppModel(title:"youtube", color: Colors.white,icon: Icons.ac_unit_outlined,link: youtube),
];

const String intro = "Hello! I’m Shiva Ganesh Reddy, a final-year B.Tech student in Computer Science and Engineering at CMR Institute of Technology, with a CGPA of 8.73. I am deeply passionate about technology and innovation, consistently exploring new trends and applying them to solve real-world problems.\n\nAs the former Technical Lead for Google Developer Student Clubs (GDSC) at CMRIT, I organized multiple coding contests and hackathons, fostering collaboration and skill development within the student community. With a strong foundation in problem-solving (2-star coder on CodeChef), I enjoy tackling complex challenges.\n\nIn addition to my leadership experience, I’ve developed and published two apps on the Google Play Store. SnapShare Contacts simplifies contact sharing through QR codes, while TraceHub is a comprehensive lost and found management system";
const String linkedin="https://www.linkedin.com/in/shivaganeshlinga/";
const String appstore="https://play.google.com/store/apps/developer?id=Ultranix";
const String github="https://github.com/Shiva7ganesh";
const String codechef="https://www.codechef.com/users/shiva7ganesh";
const String leetcode="https://leetcode.com/22R01A0531/";
const String codeforces="https://codeforces.com/profile/22r01a0531";
const String youtube="https://www.youtube.com/@ShivaDecodes";
const String email="shivaganeshlinga@outlook.com";
const String resume="https://drive.google.com/file/d/13PBqxB2ty7YJ9rO3xbqW5yODi2e3GMo3/view?usp=sharing";