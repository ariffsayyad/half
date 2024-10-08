import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'package:flutter_app/pages/attandance_1.dart'; // Ensure this import is correct

class Attandance extends StatefulWidget {
  const Attandance({super.key});

  @override
  State<Attandance> createState() => _AttandanceState();
}

class _AttandanceState extends State<Attandance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
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
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: SvgPicture.asset(
                            'assets/vectors/icon_4_x2.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Attendance',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: const Color(0xFF000000),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                ...List.generate(5, (index) {
                  final semesters = ['Sem-5', 'Sem-4', 'Sem-3', 'Sem-2', 'Sem-1'];
                  final years = ['2023-2024', '2022-2023', '2022-2023', '2021-2022', '2021-2022'];
                  final percentages = ['80%', '70%', '90%', '50%', '80%'];

                  return GestureDetector(
                    onTap: () {
                      if (index == 1) { // Check if it's the last item
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Attendance1()),
                        );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBCD3A),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(26, 20, 25.4, 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                              opacity: 0.75,
                              child: Text(
                                semesters[index],
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                            Text(
                              years[index],
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF000000),
                              ),
                            ),
                            Text(
                              percentages[index],
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 2 - 114,
              child: Opacity(
                opacity: 0.1,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                  ),
                  child: Image.asset(
                    'assets/images/back_ground_image.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
                    height: 228,
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
