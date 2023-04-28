import 'package:booking_doctor/views/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class OurTeamScreen extends StatelessWidget {
  OurTeamScreen({super.key});

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            SafeArea(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Our Team",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: mainColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: displaySize.height * 0.04,
            ),
            Container(
              decoration: const BoxDecoration(),
              height: displaySize.height * 0.13,
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: displaySize.width * 0.01,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(),
                    child: Stack(
                      fit: StackFit.passthrough,
                      alignment: Alignment.center,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          alignment: Alignment.bottomCenter,
                          width: displaySize.width * 0.3,
                          height: displaySize.height * 0.13,
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: Text(
                            "Name",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -20,
                          child: Container(
                            alignment: Alignment.center,
                            width: displaySize.width * 0.2,
                            height: displaySize.height * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 9),
                    height: displaySize.height * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "21.04.2023",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: mainColor,
                              ),
                            ),
                            Text(
                              "12 : 00 - 13 : 00",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: mainColor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Monday",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: mainColor,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(
                              CupertinoIcons.chevron_right,
                              size: 20,
                              color: mainColor,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
