import 'package:flutter/material.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Map2 extends StatefulWidget {
  const Map2({super.key});

  @override
  State<Map2> createState() => _Map2State();
}

class _Map2State extends State<Map2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 431, // Fixed width
                height: 228, // Fixed height
                child: Opacity(
                  opacity: 0.1,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Image.asset(
                      'assets/images/back_ground_image.png',
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Scrollable Content
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 10, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const StudentHomePage()),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/vectors/icon_7_x2.svg', width: 24, height: 24),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Map',
                              style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Centered Text Field for Search
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Center(
                      child: SizedBox(
                        width: 390, // Fixed width
                        height: 50,  // Fixed height
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xEDEAEDF4),
                            hintText: 'Search For Route',
                            hintStyle: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.4,
                              color: const Color(0x993C3C43),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // First Stack
                  _buildImageStack(
                    images: [
                      'assets/images/download_1.jpeg',
                      'assets/images/download_2.jpeg',
                      'assets/images/download_3.jpeg'
                    ],
                    label: 'Campus',
                  ),
                  // Second Stack
                  _buildImageStack(
                    images: [
                      'assets/images/images_8.jpeg',
                      'assets/images/images_9.jpeg',
                      'assets/images/images_10.jpeg'
                    ],
                    label: 'Class',
                  ),
                  // Third Stack
                  _buildImageStack(
                    images: [
                      'assets/images/images_12.jpeg',
                      'assets/images/images_14.jpeg',
                      'assets/images/images_15.jpeg'
                    ],
                    label: 'Curricular Activities',
                  ),
                  // Fourth Stack
                  _buildImageStack(
                    images: [
                      'assets/images/download_4.jpeg',
                      'assets/images/download_7.jpeg',
                      'assets/images/download_5.jpeg'
                    ],
                    label: 'Hostel',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageStack({required List<String> images, required String label}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20), // Add space between each Stack
      child: Stack(
        children: [
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var image in images)
                  Container(
                    width: 275,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                label,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
