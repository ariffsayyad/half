import 'package:flutter/material.dart';
import 'package:flutter_app/pages/transport_1.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchRoute extends StatefulWidget {
  const SearchRoute({super.key});

  @override
  State<SearchRoute> createState() => _SearchRouteState();
}

class _SearchRouteState extends State<SearchRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background image positioned in the center
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.center,
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
                        image: AssetImage(
                          'assets/images/back_ground_image.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Main content
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 0), // Reduced bottom padding to move content up
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Centered "Search Route" title with icon
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Transport1(),
                            ),
                          );
                        },
                        child: SvgPicture.asset(
                          'assets/vectors/icon_64_x2.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Search Route',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8), // Reduced space between title and dropdowns
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero, // Removed extra padding from ListView
                    children: [
                      buildDropdown('Select Area'),
                      buildDropdown('Select Pickup Point'),
                      buildDropdown('Select Shift'),
                      // "Search Bus"
                      //
                      //
                      //
                      // button positioned higher
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0), // Further adjusted padding to move the button up
                        child: SizedBox(
                          width: 50, // Set width for the button
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10), // Decreased space on the left and right
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFB8BBC2)),
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFFFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Search Bus',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14, // Decreased font size
                                    height: 1.5,
                                    letterSpacing: 0.4,
                                    color: const Color(0xFF313144),
                                  ),
                                ),
                              ],
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
        ],
      ),
    );
  }

  Widget buildDropdown(String hintText) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8), // Decreased space between dropdowns
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hintText,
            style: GoogleFonts.getFont(
              'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.1,
              letterSpacing: 0.5,
              color: const Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 10),
          Material(
            color: Colors.transparent,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFB8BBC2)),
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFFAFAFA),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    height: 1.5,
                    color: const Color(0xFF313144),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
