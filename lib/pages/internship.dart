import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/student_home_page.dart'; // Update this path accordingly

class Internship extends StatelessWidget {
  const Internship({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(19, 69, 20, 0),
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to StudentHomePage after login
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StudentHomePage()),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(1, 0, 1, 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 248,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
                                    child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: SvgPicture.asset(
                                        'assets/vectors/icon_4_x2.svg',
                                        width: 16,
                                        height: 16,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Internship',
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
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildInternshipItem(
                            'Creative Painting And Designing',
                            'Date: 27-06-2024 Time: 10:00 AM To 11:30 AM Venue: Internship Cell ,BBA building ,Parul University',
                          ),
                          buildInternshipItem(
                            'Content Writer',
                            'Date: 20th June, 2024 Time: 10:00 AM To 11:30 AM Venue: Internship Cell ,BBA building ,Parul University',
                          ),
                          buildInternshipItem(
                            'Adobe - Full stack Developer',
                            'Date: 27-06-2024 Time: 10:00 AM To 11:30 AM Venue: Internship Cell ,BBA building ,Parul University',
                          ),
                          buildInternshipItem(
                            'Autodesk - Software Engineer',
                            '(React JS - JavaScript)',
                          ),
                          buildInternshipItem(
                            'Brose - Software Front Developer - Engineering Process Automation',
                            '',
                          ),
                          buildInternshipItem(
                            'Razorpay - Intern - Software Developer Engineer',
                            '',
                          ),
                          buildInternshipItem(
                            'Amazon - Data Engineering',
                            '',
                          ),
                          buildInternshipItem(
                            'Varian - Junior DevOps Engineer',
                            '',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInternshipItem(String title, String details) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 8, 0, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            if (details.isNotEmpty)
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  details,
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.3,
                    color: const Color(0xFF333333),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
