import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shivaportfolio/consts/data.dart';
import 'package:shivaportfolio/providers/current_state.dart';
import 'package:shivaportfolio/screen/home_screen/phone_home_page.dart';
import 'package:shivaportfolio/screen/home_screen/phone_screen_wrapper.dart';
import 'package:shivaportfolio/widgets/frosted.dart';
import 'package:shivaportfolio/providers/current_state.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
    Provider.of<CurrentState>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Selector<CurrentState, Gradient>(
              selector: (context, provider) => provider.bgGradient,
              builder: (context, _, __) {
                return Container(
                  decoration: BoxDecoration(gradient: currentState.bgGradient),
                );
              },
            ),
            Selector<CurrentState, String>(
                selector: (context, provider) => provider.selectedCloud,
                builder: (context, _, __) {
                  return SvgPicture.asset(
                    currentState.selectedCloud,
                    // width: double.infinity,
                    height: size.height,
                    fit: BoxFit.cover,
                  );
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const FrostedContainer(
                          height: 395,
                          width: 247.5,
                          childG: Center(
                            child: SizedBox(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FrostedContainer(
                          width: 247.5,
                          height: 175.5,
                          childG: Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height - 100,
                      child: Consumer<CurrentState>(
                        builder: (context, _, __) {
                          return DeviceFrame(
                            device: currentState.currentDevice,
                            screen: Container(
                              decoration: BoxDecoration(
                                gradient: currentState.bgGradient,
                              ),
                              child: ScreenWrapper(childG: currentState.currentScreen,),
                            )
                          );
                        },
                      ),
                    ),
                    Column(
                      children: [
                        FrostedContainer(
                          height: 395,
                          width: 247.5,
                          childG: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Wrap(
                                children: [
                                  ...List.generate(
                                    colorPalette.length,
                                        (index) => Consumer<CurrentState>(
                                        builder: (context, _, __) {
                                          return Container(
                                            width: 52.5,
                                            height: 52.5,
                                            margin: const EdgeInsets.all(10),
                                            child: CustomButton(
                                              // margin: const EdgeInsets.all(10),
                                              pressed: currentState.selectedColor ==
                                                  index
                                                  ? Pressed.pressed
                                                  : Pressed.notPressed,
                                              animate: true,
                                              borderRadius: 100,
                                              shadowColor: Colors.blueGrey[50],
                                              isThreeD: true,
                                              backgroundColor:
                                              colorPalette[index].color,
                                              width: 50,
                                              height: 50,
                                              onPressed: () {
                                                currentState.changeGradient(index);
                                              },
                                            ),
                                          );
                                        }),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FrostedContainer(
                          width: 247.5,
                          height: 175.5,
                          childG: Container(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Selector<CurrentState, DeviceInfo>(
                    selector: (context, p1) => p1.currentDevice,
                    builder: (context, _, __) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ...List.generate(devices.length, (index) {
                            return CustomButton(
                              pressed: currentState.currentDevice ==
                                  devices[index].device
                                  ? Pressed.pressed
                                  : Pressed.notPressed,
                              animate: true,
                              borderRadius: 100,
                              isThreeD: true,
                              backgroundColor: Colors.black,
                              width: 37.5,
                              height: 37.5,
                              onPressed: () {
                                currentState.changeSelectedDevice(
                                    devices[index].device);
                              },
                              child: Center(
                                  child: Icon(devices[index].data,
                                      color: Colors.white, size: 25)),
                            );
                          })
                        ],
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}