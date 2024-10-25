import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shivaportfolio/consts/data.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child:Container(
          margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 10) ,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xfff5f4e7),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/shiva.jpg"),
                ),
                Text("Hi,I am Shiva Ganesh Reddy",
                style: GoogleFonts.openSans(fontSize:20,fontWeight:FontWeight.bold),),
                const SizedBox(
                  height: 15,
                ),
                Text(intro,style: GoogleFonts.openSans(fontSize:15,fontWeight:FontWeight.w500),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
