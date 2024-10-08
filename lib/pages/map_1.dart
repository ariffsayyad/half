// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Map1 extends StatelessWidget {
  const Map1({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 69, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 431,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(21, 0, 21, 255),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 244,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEAEDF4),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Positioned(
                                    left: 6.7,
                                    bottom: 7.3,
                                    child: SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 10.7,
                                        height: 9.3,
                                        child: SvgPicture.asset(
                                          'assets/vectors/icon_18_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              ' Full Map',
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
            Positioned(
              right: -804,
              bottom: -712.3,
              child: SizedBox(
                width: 1234,
                height: 1733.3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/a_3_pu_campus_map_2023_r_1_c_2_clatest_page_00011.jpeg',
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: 1214,
                    height: 1713.3,
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