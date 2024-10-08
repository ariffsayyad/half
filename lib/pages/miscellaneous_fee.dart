import 'package:flutter/material.dart';
import 'package:flutter_app/pages/fee.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MiscellaneousFee extends StatelessWidget {
  const MiscellaneousFee({super.key});

  Widget buildInputField(String label) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.getFont(
              'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0x40D9D9D9),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                border: InputBorder.none,
                hintText: label,
                hintStyle: GoogleFonts.getFont(
                  'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
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
                  width: 431,
                  height: 228,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 69, 0, 47.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(21, 0, 21, 30),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Miscellaneous Fee',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const Fee()),
                            );
                          },
                          child: Positioned(
                            left: 0,
                            child: SvgPicture.asset(
                              'assets/vectors/icon_2_x2.svg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildInputField('Name'),
                        buildInputField('Amount'),
                        buildInputField('Email'),
                        buildInputField('Phone Number'),
                        buildInputField('Enrollment Number'),
                        buildInputField('Institute'),
                        buildInputField('Course'),
                        buildInputField('Program or Specialization'),
                        buildInputField('Year'),
                        buildInputField('Fee Type'),
                        const SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add payment logic here
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                              textStyle: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            child: const Text('Payment'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
