
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/books_list.dart';
import 'package:flutter_app/pages/save.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_app/pages/student_home_page.dart';
class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 52.3, 0, 15),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
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
     ///image background
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
              width: 825,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
     ///header
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 380,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Back button
                            GestureDetector(
                              onTap: () {
                                // Navigate to StudentHomePage after login
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const StudentHomePage()),
                                );
                              },
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                  'assets/vectors/icon_14_x2.svg',
                                ),
                              ),
                            ),
                            // Library text
                            Text(
                              'Library',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: const Color(0xFF000000),
                              ),
                            ),
                            // Save button in header
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Save()),
                                );
                              },
                              child: SizedBox(
                                width: 20,
                                height: 20.6,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_11_x2.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
     ///Search box
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 410,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xEDFAFAFA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(11, 8, 11, 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Search For Favourite Book',
                              hintStyle: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0x993C3C43),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            ),
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),



          ///Stories and view more
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 390,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 11.5, 0),
                              child: SizedBox(
                                width: 120,
                                child: Text(
                                  'Stories Books',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const BooksList()),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child: Text(
                                  'View More',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: const Color(0xFFE31E26),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
     ///All stories books
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ///stories 1st book
                          Container(
                  margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/rectangle_164.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(0, 4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: const SizedBox(
                            width: 155,
                            height: 150,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                          child: Text(
                            'The Words I Cannot Say',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color(0xFFDB8606),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                          child: SizedBox(
                            width: 133,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_6_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_64_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_188_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_172_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_49_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                  child: SizedBox(
                                    width: 14,
                                    height: 17,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_153_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                          ///stories 2st book
                          Container(
                  margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/rectangle_182.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(0, 4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: const SizedBox(
                            width: 155,
                            height: 150,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                          child: Text(
                            'Prisoner (Arnold Miller)',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color(0xFFDB8606),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                          child: SizedBox(
                            width: 133,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_6_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_64_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_188_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_172_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_49_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                  child: SizedBox(
                                    width: 14,
                                    height: 17,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_153_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                          ///stories 3st book
                          Container(
                  margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/rectangle_183.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(0, 4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: const SizedBox(
                            width: 155,
                            height: 150,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                          child: Text(
                            'Embodied Hope',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color(0xFFDB8606),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                          child: SizedBox(
                            width: 133,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Author Name',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_6_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_64_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_188_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_172_x2.svg',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              width: 8.9,
                                              height: 7.6,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_49_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                  child: SizedBox(
                                    width: 14,
                                    height: 17,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_153_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                        ],
                      ),
                    ),
                  ),
     ///Romantic and view more
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 390,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 11.5, 0),
                              child: SizedBox(
                                width: 140,
                                child: Text(
                                  'Romantic Books',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                'View More',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFFE31E26),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
      ///All Romantic books
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ///Romantic 1st book
                          Container(
                            margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/rectangle_181.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: const SizedBox(
                                      width: 155,
                                      height: 150,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                                    child: Text(
                                      'Meet You (bill silas)',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xFFDB8606),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                                    child: SizedBox(
                                      width: 133,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Author Name',
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                      color: const Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_6_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_64_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_188_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_172_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_49_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_153_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ///Romantic 2st book
                          Container(
                            margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/rectangle_168.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: const SizedBox(
                                      width: 155,
                                      height: 150,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                                    child: Text(
                                      'Moonstruck (amber love)',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xFFDB8606),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                                    child: SizedBox(
                                      width: 133,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Author Name',
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                      color: const Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_6_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_64_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_188_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_172_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_49_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_153_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ///Romantic 3st book
                          Container(
                            margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/rectangle_163.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: const SizedBox(
                                      width: 155,
                                      height: 150,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                                    child: Text(
                                      'sunset kiss last',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xFFDB8606),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                                    child: SizedBox(
                                      width: 133,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Author Name',
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                      color: const Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_6_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_64_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_188_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_172_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_49_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_153_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
     ///Programming and view more
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 390,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 11.5, 0),
                              child: SizedBox(
                                width: 170,
                                child: Text(
                                  'Programming Books',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                'View More',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFFE31E26),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
     ///All Programming books
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 63),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ///Programming 1st book
                          Container(
                            margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/image_44.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: const SizedBox(
                                      width: 155,
                                      height: 150,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                                    child: Text(
                                      'Optimizing C++',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xFFDB8606),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                                    child: SizedBox(
                                      width: 133,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Author Name',
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                      color: const Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_6_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_64_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_188_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_172_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_49_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_153_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ///Programming 2st book
                          Container(
                            margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/image_41.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: const SizedBox(
                                      width: 155,
                                      height: 150,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                                    child: Text(
                                      'Programming In C',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xFFDB8606),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                                    child: SizedBox(
                                      width: 133,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Author Name',
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                      color: const Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_6_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_64_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_188_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_172_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_49_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_153_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ///Programming 3st book
                          Container(
                            margin: const EdgeInsets.only(right: 10), // Adding space between each book
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/image_42.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: const SizedBox(
                                      width: 155,
                                      height: 150,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(7, 0, 9.4, 7),
                                    child: Text(
                                      'Java Programming',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xFFDB8606),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                                    child: SizedBox(
                                      width: 133,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.2),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Author Name',
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                      color: const Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_6_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_64_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_188_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_172_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: SizedBox(
                                                        width: 8.9,
                                                        height: 7.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_49_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_153_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
    );}
}