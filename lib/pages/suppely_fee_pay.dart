import 'package:flutter/material.dart';
import 'package:flutter_app/pages/fee.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplementaryExamFee extends StatelessWidget {
  const SupplementaryExamFee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(9, 69, 9, 0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Opacity(
                  opacity: 0.1,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 2,
                      sigmaY: 2,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/back_ground_image.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 431,
                        height: 228,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(11, 0, 11, 33),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 308,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Fee()),
                                  );
                                },
                                child: Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(0, 1, 0, 0),
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Positioned(
                                      left: 6.7,
                                      top: 7.3,
                                      child: SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: SizedBox(
                                          width: 10.7,
                                          height: 9.3,
                                          child: SvgPicture.asset(
                                            'assets/vectors/icon_56_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                child: Text(
                                  'Supplementary Exam Fee',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(34, 0, 34, 10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Subjects',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 11),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                6, 0, 10, 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9D9D9),
                                                borderRadius:
                                                BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                height: 24,
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    6, 6, 6, 6),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xFF008000),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        6),
                                                  ),
                                                  child: const SizedBox(
                                                    width: 12,
                                                    height: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 2, 0, 2),
                                              child: Text(
                                                'Professional Grooming & Personality Development',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  height: 1.3,
                                                  color:
                                                  const Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                6, 0, 10, 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9D9D9),
                                                borderRadius:
                                                BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                height: 24,
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    6, 6, 6, 6),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xFF008000),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        6),
                                                  ),
                                                  child: const SizedBox(
                                                    width: 12,
                                                    height: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 2, 0, 2),
                                              child: Text(
                                                'Probability, Statistics and Numerical Methods',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  height: 1.3,
                                                  color:
                                                  const Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                                width: double.infinity,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0x403C3D8E),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        27, 20, 27, 20),
                                    child: Text(
                                      "Actual Amount        : 1200\n"
                                          "Start Date                 : 05/05/2023\n"
                                          "Due Date                   : 15/06/2023\n"
                                          "Penalty                      : -------\n"
                                          "Status                        : Un Paid",
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: const Color(0xFF000000),
                                      ),
                                      // Ensuring the text wraps within the container
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF134074),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(
                                  15, 4, 15.1, 4),
                              child: Text(
                                'Payment',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.3,
                                  letterSpacing: 0.2,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
