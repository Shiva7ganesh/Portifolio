import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shivaportfolio/consts/data.dart';
class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Programing Languages",style: GoogleFonts.inter(
                    fontWeight:FontWeight.bold,
                    fontSize:25),),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(programLangs.length,
                            (index) => Container(
                              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white70,
                                border: Border.all(color: programLangs[index].colors),
                              ),
                              child:Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    programLangs[index].skillName,
                                    style: GoogleFonts.openSans(
                                      fontSize:14,
                                      fontWeight:FontWeight.w500),
                                    ),
                                ],
                              )
                            ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Tools/Frameworks",style: GoogleFonts.inter(
                    fontWeight:FontWeight.bold,
                    fontSize:25),),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(tools.length,
                            (index) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white70,
                              border: Border.all(color: tools[index].colors),
                            ),
                            child:Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  tools[index].skillName,
                                  style: GoogleFonts.openSans(
                                      fontSize:14,
                                      fontWeight:FontWeight.w500),
                                ),
                              ],
                            )
                        ))
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
