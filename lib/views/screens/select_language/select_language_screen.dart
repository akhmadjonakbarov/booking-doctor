import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class SelectLanguageScreen extends StatelessWidget {
  SelectLanguageScreen({super.key});

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 96),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("lib/assets/images/logo.png"),
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(vertical: displaySize.height * 0.065),
              child: Text(
                "Choose a language that \n suits you",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              width: double.infinity,
              child: Column(
                children: [
                  language(
                    lan: "O'zbekcha",
                    imgUrl: "lib/assets/images/uz.png",
                    isSelected: true,
                  ),
                  SizedBox(
                    height: displaySize.height * 0.03,
                  ),
                  language(
                    lan: "Русский",
                    imgUrl: "lib/assets/images/ru.png",
                  ),
                  SizedBox(
                    height: displaySize.height * 0.03,
                  ),
                  language(
                    lan: "English",
                    imgUrl: "lib/assets/images/en.png",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class language extends StatelessWidget {
  final String lan;
  final String imgUrl;
  final bool isSelected;
  language({
    super.key,
    this.isSelected = false,
    required this.lan,
    required this.imgUrl,
  });

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: displaySize.height * 0.07,
        // width: displaySize.width * 0.03,
        decoration: BoxDecoration(
          color: isSelected ? borderColor : Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: isSelected
              ? null
              : Border.all(
                  color: Color(0xFFEFF3FB),
                ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Image.asset(imgUrl),
            ),
            Text(
              lan,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Icon(
              CupertinoIcons.right_chevron,
              color: isSelected ? Colors.white : const Color(0xFFEFF3FB),
            )
          ],
        ),
      ),
    );
  }
}
