import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/student_home_page.dart';

class TimeTable1 extends StatefulWidget {
  const TimeTable1({super.key});

  @override
  State<TimeTable1> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 69, 19, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/vectors/icon_33_x2.svg'),
                  onPressed: () {
                    // Navigate to StudentHomePage
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentHomePage()),
                    );
                  },
                ),
                const SizedBox(width: 8),
                Text(
                  'Time Table',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color(0xFF000000),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SvgPicture.asset(
              'assets/vectors/time_tabe_x2.svg',
              width: double.infinity,
              height: 150,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 9),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '203105303\n'
                    'Software Engineering \n'
                    'Kishore\n'
                    '              \n'
                    '203105304\n'
                    'Software Engineering Laboratory\n'
                    'Kishore\n'
                    '              \n'
                    '203105305\n'
                    'Formal Language & Automata Theory\n'
                    'Akshara Prachi\n'
                    '              \n'
                    '203105322\n'
                    'Artificial Intelligence\n'
                    'Meghana\n'
                    '              \n'
                    '203105323\n'
                    'Artificial Intelligence Laboratory\n'
                    'Meghana\n'
                    '              \n'
                    '203105372\n'
                    'Enterprise Programming\n'
                    '              \n'
                    '203105373\n'
                    'ERP Laboratory\n'
                    '              \n'
                    '203105371\n'
                    'VQR (Verbal, Quant, and Reasoning)\n'
                    '              \n'
                    '203193304\n'
                    'Professionalism & Corporate Ethics\n'
                    'Semi Soni\n'
                    '              \n'
                    '203105376\n'
                    'Azure Fundamentals\n',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
            const SizedBox(height: 30),
            _buildCourseItem('Compiler Design'),
            _buildCourseItem('Cyber Security'),
            _buildCourseItem('High performance Computing'),
            _buildCourseItem('MERN (MongoDB, Express, Angular, and Node)'),
            _buildCourseItem('ML'),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseItem(String courseName) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: const Color(0xFFFBCD3A),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(
        courseName,
        style: GoogleFonts.getFont(
          'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: const Color(0xFF000000),
        ),
      ),
    );
  }
}
