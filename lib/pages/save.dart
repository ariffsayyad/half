import 'package:flutter/material.dart';
import 'package:flutter_app/pages/library.dart'; // Ensure this path is correct
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Save extends StatelessWidget {
  const Save({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Stack(
              children: [
                // Centered Text
                Center(
                  child: Text(
                    'Save Books',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: const Color(0xFF000000),
                    ).copyWith( // Use copyWith to apply textDecoration
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                // Icon
                GestureDetector(
                  onTap: () {
                    // Navigate to Library page
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Library()),
                    );
                  },
                  child: Positioned(
                    left: 20, // Adjust to place the icon correctly
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(6.7),
                      child: SvgPicture.asset(
                        'assets/vectors/icon_9_x2.svg',
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30), // Space between header and tabs

            // Tabs
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 50), // Add left padding
                        child: Text(
                          'Pending',
                          style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color(0xFF383838),
                          ).copyWith(
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50), // Add right padding
                        child: Text(
                          'Completed',
                          style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color(0xFF849090),
                          ).copyWith(
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Positioned(
                    left: 0,
                    bottom: -15,
                    child: Container(
                      color: const Color(0xFF3E494A),
                      width: 190,
                      height: 5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space between tabs and content

            // Content
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Stories Books Container
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDFDFDF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFEEF1F1)),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/fixed_aspect_ratio_cover_elements_on_top_2.png',
                                ),
                              ),
                            ),
                            child: const SizedBox(
                              width: 75,
                              height: 75,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFEEF1F1)),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/fixed_aspect_ratio_cover_elements_on_top_1.png',
                                ),
                              ),
                            ),
                            child: const SizedBox(
                              width: 75,
                              height: 75,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          'Stories Books',
                          style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xFF3E494A),
                          ).copyWith(
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Programming Books Container
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFDFDFDF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 18.8, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xFFEEF1F1)),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/fixed_aspect_ratio_cover_elements_on_top.jpeg',
                                  ),
                                ),
                              ),
                              child: const SizedBox(
                                width: 75,
                                height: 75,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xFFEEF1F1)),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/fixed_aspect_ratio_cover_elements_on_top_3.jpeg',
                                  ),
                                ),
                              ),
                              child: const SizedBox(
                                width: 75,
                                height: 75,
                              ),
                            ),
                            Text(
                              '+1',
                              style: GoogleFonts.robotoCondensed(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: const Color(0xFF3E494A),
                              ).copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text(
                            'Programming Books',
                            style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color(0xFF3E494A),
                            ).copyWith(
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Background Image
            Expanded(
              child: Center(
                child: Opacity(
                  opacity: 0.1,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 2,
                      sigmaY: 2,
                    ),
                    child: Transform.translate(
                      offset: const Offset(0, -80), // Adjust the vertical offset as needed
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/back_ground_image.png',
                            ),
                          ),
                        ),
                        width: 431,
                        height: 228,
                      ),
                    ),
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
