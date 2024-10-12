import 'dart:ui';

import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shivaportfolio/consts/data.dart';
import 'package:shivaportfolio/providers/current_state.dart';
import 'package:shivaportfolio/widgets/frosted.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState = Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    // end: Alignment(0, -0.4),
                    colors: [Colors.blue, Colors.black45],
                  )),
            ),
            SvgPicture.asset(
              "assets/images/cloudyBlue.svg",
              // width: double.infinity,
              height: size.height,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        FrostedContainer(
                          height: 395,
                          width: 245,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FrostedContainer(
                          height: 175,
                          width: 245,
                        ),
                      ],
                    ),
                    SizedBox(
                      height:size.height-100,
                      child: Consumer<CurrentState>(
                        builder: (context,_,__) {
                          return DeviceFrame(
                            device: currentState.currentDevice,
                            screen: Container(
                              color: Colors.amberAccent,
                              child: const Center(
                                child: Text(
                                  "Hello World",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                    Column(
                      children: [
                        FrostedContainer(
                          height: 395,
                          width: 245,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FrostedContainer(
                          height: 175,
                          width: 245,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(
                        devices.length,
                        (index) => Selector <CurrentState,DeviceInfo>(
                      selector: (context,provider) => provider.currentDevice,
                      builder: (context,_,__) {
                        return CustomButton(
                          backgroundColor: Colors.black,
                          onPressed: (){
                            currentState.changeSelectedDevice(devices[index].device);
                          },
                          pressed: currentState.currentDevice==devices[index].device? Pressed.pressed : Pressed.notPressed,
                           isThreeD: true,
                          shadowColor: Colors.orangeAccent,
                          borderRadius: 100,
                          animate: true,
                          width: 38,
                          height: 38,
                          child: Center(
                              child:Icon(devices[index].data,color: Colors.white,)),
                        );
                      }
                    )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}