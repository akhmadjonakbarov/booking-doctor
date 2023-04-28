import '../../../constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: displaySize.width * 0.9,
                    height: displaySize.height * 0.48,
                    decoration: BoxDecoration(
                      color: borderColor,
                      borderRadius: BorderRadius.circular(115),
                    ),
                  ),
                  Positioned(
                    top: -40,
                    child: Container(
                      height: 500,
                      child: Image.asset(
                        "lib/assets/images/doctor.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: displaySize.height * 0.07,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 23,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Treat yourself with beautiful, white smile.",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: mainColor,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  width: 103,
                  height: 7,
                  decoration: const BoxDecoration(
                    color: Color(0xFF7A70C9),
                  ),
                ),
                Text(
                  "Expert dental care for the whole family.",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: mainColor,
                  ),
                ),
                SizedBox(
                  height: displaySize.height * 0.05,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: displaySize.width * 0.45,
                    height: displaySize.height * 0.07,
                    decoration: const BoxDecoration(),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: borderColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Next",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
