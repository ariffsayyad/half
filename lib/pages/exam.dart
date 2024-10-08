// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(19, 69, 21, 2),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -20,
              top: 283,
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
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  Column(
                    children: List.generate(4, (index) => const AssignmentCard()),
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

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(1, 0, 1, 35),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: 259,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const StudentHomePage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
                  child: const IconBox(),
                ),
              ),
              Text(
                'Assignment',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: const Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  const IconBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Positioned(
        left: 6.7,
        bottom: 7.3,
        child: SizedBox(
          width: 16,
          height: 16,
          child: SvgPicture.asset('assets/vectors/icon_66_x2.svg'),
        ),
      ),
    );
  }
}

class AssignmentCard extends StatefulWidget {
  const AssignmentCard({super.key});

  @override
  State<AssignmentCard> createState() => _AssignmentCardState();
}

class _AssignmentCardState extends State<AssignmentCard> {
  bool isSubmitted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(11.7, 15, 10.7, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBCD3A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(7.8, 3, 6, 4.1),
                    child: Text(
                      'Assessment - 1',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(7.8, 0, 7.8, 3.7),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'ERP',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xBF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(8.8, 0, 8.8, 1.3),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Dependency Injection, Auto wire, Web App using spring boot, Spring boot AOP, spring boot Database, Spring Rest...',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xBF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSubmitted = true;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Assignment submitted successfully'),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      decoration: BoxDecoration(
                        color: isSubmitted ? const Color(0xFF179D0B) : const Color(0xFFE31E26),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16.3, 4, 16.3, 3),
                        child: Text(
                          'Submit',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: const Color(0xFFFFFFFF),
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
    );
  }
}
