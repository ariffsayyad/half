import 'package:flutter/material.dart';
import 'package:flutter_app/pages/sem_1.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 39),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildBackgroundImage(),
            _buildTitle(context),
            _buildCGPAandBackLogs(),
            _buildSemestersResults(context),
            _buildGradesObtained(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Positioned(
      left: -21,
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
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StudentHomePage()),
                );
              },
              child: SvgPicture.asset('assets/vectors/icon_16_x2.svg', width: 24, height: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Center(
                child: Text(
                  'Result',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCGPAandBackLogs() {
    return Positioned(
      top: 50,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCGPABox(),
          _buildBackLogsBox(),
        ],
      ),
    );
  }

  Widget _buildCGPABox() {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SvgPicture.asset(
              'assets/vectors/rectangle_71_x2.svg',
              width: 168,
              height: 50,
            ),
          ),
        ),
        Container(
          width: 168,
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          child: Center(
            child: Text(
              'CGPA - 7',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: const Color(0x80FFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBackLogsBox() {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SvgPicture.asset(
              'assets/vectors/rectangle_72_x2.svg',
              width: 168,
              height: 50,
            ),
          ),
        ),
        Container(
          width: 168,
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          child: Center(
            child: Text(
              'Back Logs - 2',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: const Color(0x80FFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSemestersResults(BuildContext context) {
    return Positioned(
      top: 125,
      left: 0,
      right: 0,
      child: Column(
        children: [
          _buildSemesterResult(context, 'Sem-4', 'SGPA-6.55', 'BL-2'),
          const SizedBox(height: 10),
          _buildSemesterResult(context, 'Sem-3', 'SGPA-5.87', 'BL-0'),
          const SizedBox(height: 10),
          _buildSemesterResult(context, 'Sem-2', 'SGPA-3.54', 'BL-0'),
          const SizedBox(height: 10),
          _buildSemesterResult(context, 'Sem-1', 'SGPA-6.74', 'BL-0'),
        ],
      ),
    );
  }

  Widget _buildSemesterResult(BuildContext context, String semester, String sgpa, String bl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Sem1()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF8D99AE),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  semester,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  sgpa,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  bl,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradesObtained() {
    return Positioned(
      bottom: 60,
      left: 0,
      right: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Grades Obtain',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: const Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
            children: [
              _buildGradeBox('A\n2'),
              const SizedBox(width: 10),
              _buildGradeBox('A+\n2'),
              const SizedBox(width: 10),
              _buildGradeBox('B\n8'),
              const SizedBox(width: 10),
              _buildGradeBox('B+\n6'),
              const SizedBox(width: 10),
              _buildGradeBox('P\n8'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGradeBox(String grade) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFBFC0C0),
      ),
      padding: const EdgeInsets.all(10),
      constraints: const BoxConstraints(
        minWidth: 60, // Minimum width for the grade box
        minHeight: 50, // Minimum height for the grade box
      ),
      child: Center(
        child: Text(
          grade,
          textAlign: TextAlign.center, // Center text within the box
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: const Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
