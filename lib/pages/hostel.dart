import 'package:flutter/material.dart';
import 'package:flutter_app/pages/hostel_1.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Hostel extends StatelessWidget {
  const Hostel({super.key});

  Widget buildHostelCard(String title, String subtitle, String price) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.fromLTRB(19, 10, 18.6, 7.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            subtitle,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0x80000000),
            ),
          ),
          const SizedBox(height: 6.6),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              price,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xFF000000),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
      padding: const EdgeInsets.fromLTRB(19, 69, 21, 13.8),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.center, // Center the background image
            child: Opacity(
              opacity: 0.1,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/back_ground_image.png'),
                    ),
                  ),
                  child: const SizedBox(width: 431, height: 228),
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
                    MaterialPageRoute(builder: (context) => const Hostel1()),
                  );
                },

                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/vectors/icon_x2.svg',
                        width: 24,
                        height: 24,
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            'Hostel Fee Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24), // Spacing to match the SVG size
                    ],
                  ),
                ),
              ),
              buildHostelCard(
                'Atal Bhawan B - Non AC - Common Washroom 8 or 10 Sharing',
                'Male Students who wish to...',
                '₹39,500',
              ),
              buildHostelCard(
                'Azad Bhawan B - Non AC - Common Washroom 8 or 10 Sharing',
                'Male Students who wish to...',
                '₹42,500',
              ),
              buildHostelCard(
                'Sastri Bhawan B - Non AC - Common Washroom 8 or 10 Sharing',
                'Male Students who wish to...',
                '₹48,500',
              ),
              buildHostelCard(
                'Kalam Bhawan B - Non AC - Common Washroom 8 or 10 Sharing',
                'Male Students who wish to...',
                '₹55,500',
              ),
              buildHostelCard(
                'Tagore Bhawan B - Non AC - Common Washroom 8 or 10 Sharing',
                'Male Students who wish to...',
                '₹50,500',
              ),
              buildHostelCard(
                'Atal Bhawan B - Non AC - Common Washroom 8 or 10 Sharing',
                'Male Students who wish to...',
                '₹42,500',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
