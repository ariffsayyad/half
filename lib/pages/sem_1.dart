import 'package:flutter/material.dart';
import 'package:flutter_app/pages/result.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Sem1 extends StatelessWidget {
  const Sem1({super.key});

  Widget subjectRow(String subject, String grade, String attempt) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: SizedBox(
        width: 293,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subject,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xFF000000),
              ),
            ),
            SizedBox(
              width: 301.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Grade - $grade',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                  Text(
                    'Attempt.No $attempt',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
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

  void _handleDownloadMarkList(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Mark List Downloaded Successfully'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(16),
      ),
    );
  }

  void _showReEvaluationOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const ReEvaluationOptionsSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 20), // Adjusted bottom padding
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -20,
              right: -20,
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
                    child: const SizedBox(width: 430, height: 228),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to StudentHomePage after login
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Result()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
                      children: [
                        SvgPicture.asset(
                          'assets/vectors/icon_37_x2.svg',
                          width: 24,
                          height: 24,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center, // Center the Result text
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
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0x806C74B4),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Sem-1',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'SGPA-6.74',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'BL-',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center( // Center the Container horizontally
                  child: Container(
                    width: 390, // Set the width to 390
                    decoration: BoxDecoration(
                      color: const Color(0x40EFD1F1), // 25% opacity background
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.fromLTRB(31, 14, 22, 24),
                    child: Column(
                      children: [
                        subjectRow('Environmental Science', 'B', '1'),
                        const SizedBox(height: 10),
                        subjectRow('Basic Electrical Engineering', 'B+', '1'),
                        const SizedBox(height: 10),
                        subjectRow('Electronics Workshop', 'A', '1'),
                        const SizedBox(height: 10),
                        subjectRow('Programming for Problem Solving ', 'B+', '1'),
                        const SizedBox(height: 10),
                        subjectRow('Mathematics-I ', 'B+', '1'),
                        const SizedBox(height: 10),
                        subjectRow('Communication Skills - 1', 'B+', '1'),
                        const SizedBox(height: 10),
                        subjectRow('Engineering Physics', 'B+', '1'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 120), // Add space below the Container
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20), // Adjust bottom padding for the buttons
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 190,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          _showReEvaluationOptions(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6C74B4), // Background color
                        ),
                        child: Text(
                          'Re-Evaluation',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          _handleDownloadMarkList(context);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.green,
                          backgroundColor: const Color(0xFF6C74B4), // Change color on press
                        ),
                        child: Text(
                          'Download Mark List',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
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
    );
  }
}

class ReEvaluationOptionsSheet extends StatefulWidget {
  const ReEvaluationOptionsSheet({super.key});

  @override
  ReEvaluationOptionsSheetState createState() => ReEvaluationOptionsSheetState();
}

class ReEvaluationOptionsSheetState extends State<ReEvaluationOptionsSheet> {
  final Set<String> _selectedSubjects = {};
  bool _isReCheckingSelected = false;
  bool _isReAssessmentSelected = false;

  void _toggleSubject(String subject) {
    setState(() {
      if (_selectedSubjects.contains(subject)) {
        _selectedSubjects.remove(subject);
      } else {
        _selectedSubjects.add(subject);
      }
    });
  }

  void _handleButtonPress(String buttonType) {
    setState(() {
      if (buttonType == 'Re-Checking') {
        _isReCheckingSelected = true;
      } else if (buttonType == 'Re-Assessment') {
        _isReAssessmentSelected = true;
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$buttonType Successfully Submitted'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
      ),
    );
  }

  Widget _subjectName(String subjectName) {
    final isSelected = _selectedSubjects.contains(subjectName);

    return GestureDetector(
      onTap: () => _toggleSubject(subjectName),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Text(
                subjectName,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: isSelected ? Colors.green : Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionButton(String label, bool isSelected) {
    return SizedBox(
      width: 120, // Set width to 120
      height: 40, // Set height to 40
      child: ElevatedButton(
        onPressed: () => _handleButtonPress(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.green : const Color(0xFF6C74B4),
          padding: const EdgeInsets.symmetric(vertical: 8),
          textStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        child: Text(label),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 420,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Re-Evaluation Options',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: const Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _subjectName('Environmental Science'),
                _subjectName('Basic Electrical Engineering'),
                _subjectName('Electronics Workshop'),
                _subjectName('Programming for Problem Solving'),
                _subjectName('Mathematics-I'),
                _subjectName('Communication Skills - 1'),
                _subjectName('Engineering Physics'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _actionButton('Re-Checking', _isReCheckingSelected),
              _actionButton('Re-Assessment', _isReAssessmentSelected),
            ],
          ),
        ],
      ),
    );
  }
}
