// ignore_for_file: unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/student_home_page.dart';

class Mail extends StatefulWidget {
  const Mail({super.key});

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 17),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 218,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const StudentHomePage()),
                                  );
                                },
                                child: Container(
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Positioned(
                                      left: 6.7,
                                      top: 7.3,
                                      child: SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: SizedBox(
                                          width: 10.7,
                                          height: 9.3,
                                          child: SvgPicture.asset(
                                            'assets/vectors/icon_19_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Mail',
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
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Primary',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),




///1st  mail
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/container_3_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'linkedIn job search',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Saikishor Pappala and others share their thoughts o...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Here are your network highlights',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///2nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_1_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'JIBY C (Classroom)',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'New assignment: “SE Lab Manual Formal” ',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Notification setting 5B1 SE Lab New assignment SE pratica...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///3nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_11_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Online courses',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Software Engineering - Assignment-O-RELEASED',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Dear Learners, We welcome you all to this course. The As...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///4nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_12_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Coding Ninjas',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Coding + Rainy Days = Scholarship up to 100%',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Hi ARIFF, Are you feeling stuck at home during this heavy...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///5nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_13_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Internship Cell',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Internship Opportunity: Interns for the post of Admi...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Dear Students, Greetings from the Internship cell, Parul U...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///6nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_14_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Myntra',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Only Wallet-Approved Styles Here',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Shop Now At Myntra Fashion Carnival!',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///7nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_16_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'EDC Cell',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Invitation for Women Startup Meet 3.0 at Parul University...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Greetings from Parul Innovation and Entrepreneurship Research',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///8nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_17_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'linkedIn job search',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Saikishor Pappala and others share their thoughts o...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Here are your network highlights',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///9nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/container_3_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'linkedIn job search',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Saikishor Pappala and others share their thoughts o...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Here are your network highlights',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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
///10nd mail

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 45.1,
                                  height: 45,
                                  child: SvgPicture.asset(
                                    'assets/vectors/container_3_x2.svg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'linkedIn job search',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                    child: Text(
                                      'Saikishor Pappala and others share their thoughts o...',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Here are your network highlights',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0.1, 11),
                                child: Text(
                                  '8:40 am',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xB2000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                  ),
                                  child: Container(
                                    width: 20.1,
                                    height: 20,
                                    padding: const EdgeInsets.fromLTRB(1.3, 1.7, 1.3, 1.7),
                                    child: SizedBox(
                                      width: 17.5,
                                      height: 16.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_84_x2.svg',
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









                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 29,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFDCE4FC),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 390,
                height: 41,
                padding: const EdgeInsets.symmetric(horizontal: 18.5, vertical: 11.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Icon
                    SizedBox(
                      width: 19.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color(0xFF000000),
                            ),
                          ),
                          Container(
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color(0xFF000000),
                            ),
                          ),
                          Container(
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Center Text
                    Expanded(
                      child: Center(
                        child: Text(
                          'Search for emails',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF000000),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    // Right Icon
                    SizedBox(
                      width: 24.4,
                      height: 25,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_157_x2.svg',
                        width: 20.3,
                        height: 20.8,
                      ),
                    ),
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}