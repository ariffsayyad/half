import 'package:flutter/material.dart';
import 'package:flutter_app/pages/feed_back_1.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  FeedBackState createState() => FeedBackState();
}

class FeedBackState extends State<FeedBack> {
  String? _selectedTeacher;
  final List<String> _teachers = [
    'Krupali Dave',
    'Akshara Prachi',
    'Jiby TC',
    'Dr.Maghana',
    'Dinesh T',
    'Semi Soni',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Opacity(
                opacity: 0.1,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    width: 431,
                    height: 228,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/back_ground_image.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Main Content
          Padding(
            padding: const EdgeInsets.only(top: 69, bottom: 352, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const StudentHomePage()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset(
                            'assets/vectors/icon_24_x2.svg',
                          ),
                        ),
                        const SizedBox(width: 10), // Spacing between icon and text
                        Expanded(
                          child: Center(
                            child: Text(
                              'Feedback',
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
                // Centered Feedback Form Box
                Center(
                  child: Container(
                    width: 390, // Fixed width
                    height: 50,  // Fixed height
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0x403C3D8E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Teachers Weekly Feedback Form',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
                // Dropdown for Teacher Name
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 119),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0x66000000)),
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 13, 19, 10),
                    child: DropdownButtonFormField<String>(
                      value: _selectedTeacher,
                      decoration: InputDecoration(
                        hintText: 'Select Teacher Name',
                        hintStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xFF757575),
                        ),
                        border: InputBorder.none, // Removes border line
                        isDense: true, // Optional: reduces padding inside the field
                      ),
                      isExpanded: true,
                      icon: SizedBox(
                        width: 20,
                        height: 16,
                        child: SvgPicture.asset(
                          'assets/vectors/icon_67_x2.svg',
                        ),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedTeacher = newValue;
                        });

                        // Add a delay and then navigate to the next page
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FeedBack1()),
                          );
                        });
                      },
                      items: _teachers.map<DropdownMenuItem<String>>((String teacher) {
                        return DropdownMenuItem<String>(
                          value: teacher,
                          child: Text(teacher),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
