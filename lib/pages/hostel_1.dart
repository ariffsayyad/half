import 'package:flutter/material.dart';
import 'package:flutter_app/pages/feed_back.dart';
import 'package:flutter_app/pages/feed_back_1.dart';
import 'package:flutter_app/pages/gate_pass.dart';
import 'package:flutter_app/pages/hostel.dart';
import 'package:flutter_app/pages/hostel_2.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hostel_3.dart';

class Hostel1 extends StatelessWidget {
  const Hostel1({super.key});

  Widget buildBox(BuildContext context, String text, Widget nextPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: const Color(0xFFFBCD3A),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xFF000000),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
      padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -13,
            top: 261,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const StudentHomePage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/vectors/icon_5_x2.svg',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                      const Spacer(),  // Adds spacing to the left of the text
                      Text(
                        'Hostel',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: const Color(0xFF000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),  // Adds spacing to the right of the text
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 0),
              buildBox(context, 'Hostel Fee Details', const Hostel()), // Navigate to HostelFeeDetailsPage
              const SizedBox(height: 15),
              buildBox(context, 'Feedback', const FeedBack1()), // Placeholder for other pages
              const SizedBox(height: 15),
              buildBox(context, 'Gate pass', const GatePass()),
              const SizedBox(height: 15),
              buildBox(context, 'Attendance', const Hostel2()),
              const SizedBox(height: 15),
              buildBox(context, 'Forms', const Hostel3()),
              const SizedBox(height: 15),
              buildBox(context, 'Mess Timetable', const Placeholder()),
            ],
          ),
        ],
      ),
    );
  }
}
