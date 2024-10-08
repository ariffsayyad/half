import 'package:flutter/material.dart';
import 'package:flutter_app/pages/registration.dart';
import 'package:flutter_app/pages/search_route.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'package:flutter_app/pages/transport.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Transport1 extends StatelessWidget {
  const Transport1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 69, 0, 352),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 247,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Positioned(
                              left: 6.7,
                              bottom: 7.3,
                              child: SizedBox(
                                width: 16,
                                height: 16,
                                child: SvgPicture.asset(
                                  'assets/vectors/icon_20_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Transport',
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
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
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
                            builder: (context) => const Registration()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Container(
                        width: 390,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFBCD3A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: Center(
                            child: Text(
                              'Registration',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Container(
                      width: 390,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBCD3A),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to StudentHomePage after login
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Transport()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 21),
                          child: Center(
                            child: Text(
                              'Transport Information',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to StudentHomePage after login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchRoute()),
                      );
                    },
                    child: Container(
                      width: 390,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBCD3A),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 21),
                        child: Center(
                          child: Text(
                            'Search Route',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Opacity(
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
          ],
        ),
      ),
    );
  }
}
