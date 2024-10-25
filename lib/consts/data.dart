
import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shivaportfolio/models/app_model.dart';
import 'package:shivaportfolio/models/color_model.dart';
import 'package:shivaportfolio/models/device_model.dart';
import 'package:shivaportfolio/screen/miniprojects/about/about.dart';
import 'package:shivaportfolio/screen/miniprojects/education/education.dart';
import 'package:shivaportfolio/screen/miniprojects/skills/skills.dart';

import '../models/experience_model.dart';
import '../models/skill_model.dart';

List<DeviceModel> devices=[
  DeviceModel(data: Icons.android, device: Devices.android.onePlus8Pro),
  DeviceModel(data: Icons.apple, device: Devices.ios.iPhone13),
  DeviceModel(data: Icons.tablet, device: Devices.android.mediumTablet)
];
const double baseHeight = 790;
const double baseWidth = 1440;
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
  AppModel(title:"About", color: Colors.white,icon: Icons.person,screen: const About()),
  AppModel(title:"Skills", color: Colors.white,icon: Icons.ac_unit_outlined,screen: const Skills()),
  AppModel(title:"Education", color: Colors.white,icon: FontAwesomeIcons.edge,screen: const Education()),
  AppModel(title:"Linkedin", color: Colors.white,assetPath: "assets/icons/linkedin.svg",link: linkedin),
  AppModel(title:"App Store", color: Colors.white,assetPath: "assets/icons/playstore.svg",link: appstore),
  AppModel(title:"Github", color: Colors.white,assetPath: "assets/icons/github.svg",link: github),
  AppModel(title:"Codechef", color: Colors.white,icon: Icons.ac_unit_outlined,link: codechef),
  AppModel(title:"Leetcode", color: Colors.white,icon: Icons.ac_unit_outlined,link: leetcode),
  AppModel(title:"Codeforces", color: Colors.white,icon: Icons.ac_unit_outlined,link: codeforces),
  AppModel(title:"youtube", color: Colors.white,assetPath: "assets/icons/youtube.svg",link: youtube),
];

const String intro = "a pre-final-year B.Tech student in Computer Science and Engineering at CMR Institute of Technology, with a CGPA of 8.81. I am deeply passionate about technology and innovation, consistently exploring new trends and applying them to solve real-world problems.\n\nAs the former Technical Lead for Google Developer Student Clubs (GDSC) at CMRIT, I organized multiple coding contests and hackathons, fostering collaboration and skill development within the student community. With a strong foundation in problem-solving (2-star coder on CodeChef), I enjoy tackling complex challenges.\n\nIn addition to my leadership experience, I’ve developed and published two apps on the Google Play Store. SnapShare Contacts simplifies contact sharing through QR codes, while TraceHub is a comprehensive lost and found management system";
const String linkedin="https://www.linkedin.com/in/shivaganeshlinga/";
const String appstore="https://play.google.com/store/apps/developer?id=Ultranix";
const String github="https://github.com/Shiva7ganesh";
const String codechef="https://www.codechef.com/users/shiva7ganesh";
const String leetcode="https://leetcode.com/22R01A0531/";
const String codeforces="https://codeforces.com/profile/22r01a0531";
const String youtube="https://www.youtube.com/@ShivaDecodes";
const String email="shivaganeshlinga@outlook.com";
const String resume="https://drive.google.com/file/d/13PBqxB2ty7YJ9rO3xbqW5yODi2e3GMo3/view?usp=sharing";

List<SkillsModel> programLangs=[
  SkillsModel(skillName: "Python", colors: Colors.blue),
  SkillsModel(skillName: "Java", colors: Colors.orange),
  SkillsModel(skillName: "C", colors: Colors.red),
];

List<SkillsModel> tools=[
  SkillsModel(skillName: "Flutter", colors: Colors.teal),
  SkillsModel(skillName: "Firebase", colors: Colors.deepPurple),
  SkillsModel(skillName: "Android Studio", colors: Colors.green),
  SkillsModel(skillName: "Github", colors: Colors.lime),
  SkillsModel(skillName: "Selenium", colors: Colors.cyan),
];

final List<JobExperience> education = [
JobExperience(
color: Colors.red,
location: "Hyderabad, India",
title: 'Computer Science and Engineering',
company: 'CMR Institure of Technology',
startDate: 'Nov 2026',
endDate: 'Present',
bulletPoints: [
"Currently in the pre-final year of my college!",
],
),];