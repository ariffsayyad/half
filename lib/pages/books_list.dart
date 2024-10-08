// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/books_details.dart';
import 'package:flutter_app/pages/library.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksList extends StatelessWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 35),
        child: Stack(
          clipBehavior: Clip.none,
          children: [

///image background
            Positioned(
              left: -21,
              top: 299.7,
              child: Opacity(
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
            ),



            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
/// header
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 29),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 232,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Library()),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
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
                                          'assets/vectors/icon_17_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Stories',
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

/// All books list
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
                          crossAxisAlignment: CrossAxisAlignment.center, // Center items vertically
                          children: [
                            /// 1st book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => const BooksDetails()),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          width: 108,
                                          height: 107,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'assets/images/image_6.png',
                                                ),
                                              ),
                                            ),
                                            child: const SizedBox(
                                              width: 225,
                                              height: 107,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                          child: Text(
                                            'The Psychology Of Money',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: const Color(0xFFDB8606),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                          child: Text(
                                            'Author Name',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 49.8,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                                child: SizedBox(
                                                  width: 8.9,
                                                  height: 7.6,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_193_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                                child: SizedBox(
                                                  width: 8.9,
                                                  height: 7.6,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_56_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                                child: SizedBox(
                                                  width: 8.9,
                                                  height: 7.6,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_100_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                                child: SizedBox(
                                                  width: 8.9,
                                                  height: 7.6,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_19_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                                child: SizedBox(
                                                  width: 8.9,
                                                  height: 7.6,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_113_x2.svg',
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
                              ),
                            ),

                            /// 2nd book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_168.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Moonstruck True Love Knows Bound',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),

                            /// 3rd Book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_163.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Sun Set Kiss The Love Story',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

///2nd list books
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
                          crossAxisAlignment: CrossAxisAlignment.center, // Center items vertically
                          children: [
                            /// 4th book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_161.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Love Of My Life'
                                              '   \n',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),

                            /// 5th book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_167.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Always I Am love You'
                                              ' \n',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),

                            /// 6th Book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_165.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Love Maybe '
                                              '\n'
                                              '\n',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

 ///3rd list books
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
                          crossAxisAlignment: CrossAxisAlignment.center, // Center items vertically
                          children: [
                            /// 7th book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_171.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Short Story'
                                              '\n'
                                              '\n',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),

                            /// 8th book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_16.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Dream From Nepal'
                                              ' \n',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),

                            /// 9th Book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_166.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'The Life And Times Of Two Flared Nostrils',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

///4rd list books
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
                          crossAxisAlignment: CrossAxisAlignment.center, // Center items vertically
                          children: [
                            /// 10th book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_17.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'the tell-tale heart'
                                              '\n',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),

                            /// 11th book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_162.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Riptides'
                                              ' \n'
                                              '\n',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),

                            /// 12th Book
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(1, 2, 1, 9.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        width: 108,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_163.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            width: 225,
                                            height: 107,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(7.6, 0, 7.6, 2),
                                        child: Text(
                                          'Sun Set Kiss The Love Story',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: const Color(0xFFDB8606),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 2),
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 49.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 2, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_193_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_56_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_100_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0.2, 1.1, 0),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_19_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.2),
                                              child: SizedBox(
                                                width: 8.9,
                                                height: 7.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_113_x2.svg',
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}