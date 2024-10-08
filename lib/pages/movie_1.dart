import 'package:flutter/material.dart';
import 'package:flutter_app/pages/movie_2.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Movie1 extends StatelessWidget {
  const Movie1({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image paths
    final List<String> imagePaths = [
      'assets/images/image_37.png', // Replace with your image paths
      'assets/images/image_38.png',
      'assets/images/image_39.png',
    ];

    return Scaffold(
      body: Stack(
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
                  width: 431,
                  height: 228,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/back_ground_image.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 30), // Increased top margin
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 19.1, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
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
                                  child: SvgPicture.asset(
                                    'assets/vectors/icon_25_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Movie Tickets',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: const Color(0xFF000000),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                              child: SizedBox(
                                width: 24,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF6C7072),
                                        ),
                                        child: const SizedBox(
                                          width: 24,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(3, 0, 0, 5),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF6C7072),
                                        ),
                                        child: const SizedBox(
                                          width: 21,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF6C7072),
                                        ),
                                        child: const SizedBox(
                                          width: 7,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 0, 25, 30), // Adjusted top margin
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Up Coming Movies',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 0, 15, 20),
                  height: 250, // Fixed height for the card container
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 220, // Increased width for each card
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            // Image
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  imagePaths[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // Date button
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F9FF),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                child: Text(
                                  'Date',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: const Color(0xFF026AA2),
                                  ),
                                ),
                              ),
                            ),
                            // Language
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F9FF),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                child: Text(
                                  'Language',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: const Color(0xFF026AA2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        // Your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF026AA2), // Background color
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to Movie2 page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Movie2()),
                          );
                        },
                        child: Text(
                          'Book Your Tickets',
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
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
    );
  }
}
