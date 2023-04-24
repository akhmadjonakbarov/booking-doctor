import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/constants.dart';

class Header extends StatelessWidget {
  Header({
    super.key,
  });
  double maxWidth = 0;
  double maxHeight = 0;
  late Size displaySize;
  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "#happysmile",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: mainColor,
            ),
          ),
          SizedBox(
            height: displaySize.height * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(27),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 14,
            ),
            child: Column(
              children: [
                Text(
                  "Enter name to search",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: searchBarTextColor,
                  ),
                ),
                SizedBox(
                  height: displaySize.height * 0.01,
                ),
                Container(
                  decoration: const BoxDecoration(),
                  width: displaySize.width * 0.75,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: mainColor,
                          ),
                          onPressed: () {
                            print("SEARCH");
                          },
                          child: const Text("Search"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
