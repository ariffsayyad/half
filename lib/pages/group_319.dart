// ignore_for_file: unused_import, unnecessary_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Group319 extends StatelessWidget {
  const Group319({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 36, 14.5, 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'You Have Submitted Successfully',
                style: GoogleFonts.getFont(
                  'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.5, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(16.7, 0, 16.7, 7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xBF2C233E),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(18, 18, 19, 19),
                        child: SizedBox(
                          width: 13,
                          height: 13,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_146_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Close Now',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}