import '../../../constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: displaySize.height * 0.35,
            decoration: BoxDecoration(
              color: borderColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: displaySize.width * 0.70,
              decoration: const BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "First Name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsetsDirectional.symmetric(
                            vertical: 10,
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Last Name",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Phonenumber",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 25,
                      bottom: 50,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: 'By joining, you agree to the ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms of Service',
                            style: TextStyle(
                              color: borderColor,
                            ),
                          ),
                          const TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: borderColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(),
                      width: double.infinity,
                      height: displaySize.height * 0.08,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: borderColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
