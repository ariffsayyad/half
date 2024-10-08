// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Rectangle172 extends StatelessWidget {
  const Rectangle172({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 21, 19.5, 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 11.9, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'PIET DHOOM 2024 REGISTRATION',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.3,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      'Greetings, Esteemed Participants, We are thrilled to invite you to the grandest celebration of culture, creativity, and talent – DHOOM 2024! Prepare to be mesmerized by a spectacular showcase of diverse talents and join us in creating memories that will last a lifetime.   Register yourself for the participation in your interested category.',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.4,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Event date : 21-24 February 2024',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(7.5, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBCD3A),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 19, 0.4, 19),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                '1   Day',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  height: 12,
                                  child: Text(
                                    'st',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBCD3A),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 19, 0.4, 19),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                '2   Day',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  height: 12,
                                  child: Text(
                                    'nd',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBCD3A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 19, 0.4, 19),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              '3   Day',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF000000),
                              ),
                            ),
                            Positioned(
                              left: 7,
                              top: 0,
                              child: SizedBox(
                                height: 12,
                                child: Text(
                                  'rd',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
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
    );
  }
}