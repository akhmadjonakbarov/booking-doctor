import 'package:booking_doctor/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              child: Container(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: displaySize.width * 0.5,
                      height: displaySize.height * 0.3,
                      decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "21.04.2023",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: mainColor,
              ),
            ),
            Text(
              "Monday",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: mainColor,
              ),
            ),
            Text(
              "12 : 00 - 13 : 00",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: mainColor,
              ),
            ),
            Container(
              width: displaySize.width * 0.6,
              height: displaySize.height * 0.3,
              decoration: BoxDecoration(
                color: borderColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(
                  14,
                ),
                child: Container(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Booking"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
