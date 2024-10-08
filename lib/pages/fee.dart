import 'package:flutter/material.dart';
import 'package:flutter_app/pages/miscellaneous_fee.dart';
import 'package:flutter_app/pages/pay_fee.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'package:flutter_app/pages/suppely_fee_pay.dart';
import 'package:flutter_app/pages/supplementary_exam_form.dart';
import 'package:flutter_app/pages/university_fee_history.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Fee extends StatelessWidget {
  const Fee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 97),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: Positioned(
                left: -21,
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
                        width: 390,
                        height: 228,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(  // Center the entire Column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center, // Center align the column content
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 214,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const StudentHomePage()),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/vectors/icon_61_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Fee',
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PayFee()),
                      );
                    },
                    child: _buildFeeBox('University Fee'),
                  ),
                  const SizedBox(height: 15),

                  _buildFeeBox('Hostel Fee'),
                  const SizedBox(height: 15),

                  _buildFeeBox('Transport Fee'),
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SupplementaryExamFee()),
                      );
                    },
                    child: _buildFeeBox('Supplementary Exam Fee'),
                  ),
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MiscellaneousFee()),
                      );
                    },
                    child: _buildFeeBox('Miscellaneous Fee'),
                  ),
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SupplementaryExamForm()),
                      );
                    },
                    child: _buildFeeBox('Supplementary Exam Form'),
                  ),
                  const SizedBox(height: 15),

                  _buildSectionHeader('History'),
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UniversityFeeHistory()),
                      );
                    },
                    child: _buildFeeBox('University Fee History'),
                  ),
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UniversityFeeHistory()),
                      );
                    },
                    child: _buildFeeBox('Hostel Fee History'),
                  ),
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UniversityFeeHistory()),
                      );
                    },
                    child: _buildFeeBox('Transport Fee History'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to create a fee box widget
  Widget _buildFeeBox(String text) {
    return Container(
      width: 390, // Set the width to 390 for every box
      decoration: BoxDecoration(
        color: const Color(0xFFFBCD3A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 21),
        child: Text(
          text,
          style: GoogleFonts.getFont(
            'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: const Color(0xFF000000),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  // Method to create a section header widget
  Widget _buildSectionHeader(String text) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.getFont(
          'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 24,
          color: const Color(0xFF000000),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
