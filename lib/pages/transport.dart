import 'package:flutter/material.dart';
import 'package:flutter_app/pages/transport_1.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Transport extends StatelessWidget {
  const Transport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(19, 69, 21, 0),
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
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(1, 0, 1, 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 312,
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
                                        builder: (context) => const Transport1()),
                                  );
                                },
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),

                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Center(
                                      child: SvgPicture.asset(
                                        'assets/vectors/icon_31_x2.svg',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Transport Information',
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
                    SizedBox(
                      width: 390,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x403C3D8E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: 331,
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'City                           = ',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Wagodia',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nArea                          = ',
                                ),
                                TextSpan(
                                  text: 'Ajva',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nPickup Point            = ',
                                ),
                                TextSpan(
                                  text: 'Gowra',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nShift                          = ',
                                ),
                                TextSpan(
                                  text: 'Morning Shift',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nIn Time                     =',
                                ),
                                TextSpan(
                                  text: ' 7:30 AM',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nOut Time                  =',
                                ),
                                TextSpan(
                                  text: ' 4:45 PM',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nRoute                        = ',
                                ),
                                TextSpan(
                                  text: 'Alkapuri',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nFrom Date                = ',
                                ),
                                TextSpan(
                                  text: '05/05/2023',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nTo Date                     = ',
                                ),
                                TextSpan(
                                  text: '15/06/2023',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nFee Paid                   = ',
                                ),
                                TextSpan(
                                  text: '0',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nFee Outstanding     = ',
                                ),
                                TextSpan(
                                  text: '48,000',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nPenalty                     = ',
                                ),
                                TextSpan(
                                  text: '-------',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                                const TextSpan(
                                  text: '\nStatus                       = ',
                                ),
                                TextSpan(
                                  text: 'Unpaid',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.3,
                                    color: const Color(0x80000000),
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}
