import 'package:flutter/material.dart';
import 'package:flutter_app/pages/attandance.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Attendance1 extends StatelessWidget {
  const Attendance1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
      padding: const EdgeInsets.fromLTRB(20, 69, 20, 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          _buildBackgroundImage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context), // Pass context to the header
              _buildAttendanceSummary(),
              _buildAttendanceDetails(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Center(
      child: Positioned(
        child: Opacity(
          opacity: 0.1,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: const Image(
              width: 431,
              height: 228,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/back_ground_image.png'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Attendance',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.black, // Set the text color to black
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                // Navigate to the AttendancePage when the icon is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Attandance()),
                );
              },
              child: SvgPicture.asset(
                'assets/vectors/icon_65_x2.svg',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceSummary() {
    return Container(
      margin: const EdgeInsets.only(bottom: 21),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFFBCD3A),
        boxShadow: const [BoxShadow(color: Color(0x40000000), blurRadius: 2, offset: Offset(0, 4))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTextWithOpacity('Sem-1', 15, 0.75),
          _buildTextWithOpacity('2021-2022', 16),
          _buildTextWithOpacity('80%', 16),
        ],
      ),
    );
  }

  Widget _buildAttendanceDetails() {
    return Column(
      children: [
        _buildAttendanceRow(['Course', 'Total', 'Present', 'Attendance'], isHeader: true),
        _buildAttendanceRow(['SE', '3', '3', '100%']),
        _buildAttendanceRow(['SE LAB', '3', '3', '100%']),
        _buildAttendanceRow(['FLAT', '7', '5', '71%']),
        _buildAttendanceRow(['PCE', '3', '1', '50%']),
        _buildAttendanceRow(['Total', '15', '12', '80%']),
      ],
    );
  }

  Widget _buildAttendanceRow(List<String> texts, {bool isHeader = false}) {
    return Row(
      children: texts.asMap().entries.map((entry) {
        int index = entry.key;
        String text = entry.value;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: index == 0 ? 100 : 85,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: const Color(0xFFF8F9FA),
            boxShadow: const [BoxShadow(color: Color(0x40881717), blurRadius: 2, offset: Offset(0, 4))],
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                fontWeight: isHeader ? FontWeight.w500 : FontWeight.w400,
                fontSize: isHeader ? 14 : 14,
                color: Colors.black, // Set the text color to black
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildTextWithOpacity(String text, double fontSize, [double opacity = 1.0]) {
    return Opacity(
      opacity: opacity,
      child: Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: Colors.black, // Set the text color to black
        ),
      ),
    );
  }
}
