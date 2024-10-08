// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/fee.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
// ignore: unused_import
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplementaryExamForm extends StatelessWidget {
  const SupplementaryExamForm({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 69, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 431,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(21, 0, 21, 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const Fee()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 1, 26, 3),
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
                                        'assets/vectors/icon_55_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Supplementary Exam Form',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(21, 0, 21, 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Semester 5',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: const SizedBox(
                                          width: 12,
                                          height: 12, // Spacing between elements
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 3, 0, 2),
                                  child: Text(
                                    'Formal Language & Automata Theory',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD9D9D9),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: const SizedBox(
                                            width: 12,
                                            height: 12, // Spacing between elements
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 3, 0, 2),
                                    child: Text(
                                      'Software Engineering',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: const SizedBox(
                                          width: 12,
                                          height: 12, // Spacing between elements
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 3, 0, 2),
                                  child: Text(
                                    'Quant, and Reasoning',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(21, 0, 21, 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Semester 4',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(21, 0, 21, 31),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Container(
                                width: 24,
                                height: 24,
                                padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const SizedBox(
                                    width: 12,
                                    height: 12, // Spacing between elements
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 3, 0, 2),
                            child: Text(
                              'Probability, Statistics and Numerical Method',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Positioned(
                      top: -100,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFE31E26),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          height: 30,
                          padding: const EdgeInsets.fromLTRB(14, 5, 14.9, 6),
                          child: Text(
                            'Submit',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
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

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}