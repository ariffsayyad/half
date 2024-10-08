import 'package:flutter/material.dart';
import 'package:flutter_app/pages/exam.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Submission extends StatelessWidget {
  const Submission({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 36),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -13,
              top: 300,
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

            ///Assessments
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///back icon
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const StudentHomePage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 258,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
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
                                          'assets/vectors/icon_1_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Submission',
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
                  ),


                  ///main container join class room
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0x806C74B4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(6.8, 9, 18.7, 13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFFBCD3A),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x80000000),
                                        offset: Offset(4, 4),
                                        blurRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(9.2, 5, 9, 6),
                                    child: Text(
                                      'Artificial Intelligence',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(10.2, 0, 10.2, 0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Text(
                                        'Introduction about AI, Search techniques, Game Playing',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Dr. Meghana Harsh Ghogare',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color(0x80000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(3.9, 0, 0, 0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0x80000000),
                                ),
                                child: const SizedBox(
                                  width: 360.5,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(9.8, 0, 6.6, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end, // Changed to end
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFFBCD3A),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x80000000),
                                          offset: Offset(4, 4),
                                          blurRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(13, 5, 13, 6),
                                      child: Text(
                                        'Join Class Room',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color(0xFF000000),
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
                    ),
                  ),


                  ///up coming assignment
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 130),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Up Coming Assignment',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  ///Assessment horizontal animation
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 40, 3.5, 10), // Reduced bottom margin
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                'Assignment',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Exam()),
                                );
                              },
                              child: Text(
                                'View All',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: const Color(0xFFE31E26),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5), // Increase this value for more space
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(4, (index) {
                              final assessments = [
                                {
                                  'title': 'Assessment - 1',
                                  'subject': 'ERP',
                                  'details': 'Spring, Spring boot, Architecture,Modules, Dependency Injection...',
                                  'daysLeft': '1 Day Left',
                                  'color': const Color(0xFFE31E26),
                                },
                                {
                                  'title': 'Assessment - 2',
                                  'subject': 'AI',
                                  'details': 'Neural Network and Expert Systems, Natural language Processing...',
                                  'daysLeft': '4 Day Left',
                                  'color': const Color(0xFFFBCD3A),
                                },
                                {
                                  'title': 'Assessment - 3',
                                  'subject': 'FLAT',
                                  'details': 'Undecidability, Turing machines, Regular languages and finite...',
                                  'daysLeft': '4 Day Left',
                                  'color': const Color(0xFFFBCD3A),
                                },
                                {
                                  'title': 'Assessment - 4',
                                  'subject': 'OE',
                                  'details': 'Azure SLA and Service Lifecycles, Azure Pricing and Support...',
                                  'daysLeft': '4 Day Left',
                                  'color': const Color(0xFFFBCD3A),
                                },
                              ];
                              final assessment = assessments[index];
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0x406C74B4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 200,
                                height: 155,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(7, 10, 7.9, 9.5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        assessment['title'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                      Text(
                                        assessment['subject'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: const Color(0xBF000000),
                                        ),
                                      ),
                                      Text(
                                        assessment['details'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: const Color(0x80000000),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          'Read more',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: const Color(0x40000000),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        assessment['daysLeft'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: assessment['color'] as Color,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Supplementary Assessment horizontal animation
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 3.5, 0), // Reduced top margin
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                'Assignment',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                            Text(
                              'View All',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color(0xFFE31E26),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5), // Increase this value for more space
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(4, (index) {
                              final assessments = [
                                {
                                  'title': 'Assessment - 1',
                                  'subject': 'ERP',
                                  'details': 'Spring, Spring boot, Architecture,Modules, Dependency Injection...',
                                  'daysLeft': '1 Day Left',
                                  'color': const Color(0xFFE31E26),
                                },
                                {
                                  'title': 'Assessment - 2',
                                  'subject': 'AI',
                                  'details': 'Neural Network and Expert Systems, Natural language Processing...',
                                  'daysLeft': '4 Day Left',
                                  'color': const Color(0xFFFBCD3A),
                                },
                                {
                                  'title': 'Assessment - 3',
                                  'subject': 'FLAT',
                                  'details': 'Undecidability, Turing machines, Regular languages and finite...',
                                  'daysLeft': '4 Day Left',
                                  'color': const Color(0xFFFBCD3A),
                                },
                                {
                                  'title': 'Assessment - 4',
                                  'subject': 'OE',
                                  'details': 'Azure SLA and Service Lifecycles, Azure Pricing and Support...',
                                  'daysLeft': '4 Day Left',
                                  'color': const Color(0xFFFBCD3A),
                                },
                              ];
                              final assessment = assessments[index];
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0x406C74B4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 200,
                                height: 155,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(7, 10, 7.9, 9.5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        assessment['title'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                      Text(
                                        assessment['subject'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: const Color(0xBF000000),
                                        ),
                                      ),
                                      Text(
                                        assessment['details'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: const Color(0x80000000),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          'Read more',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: const Color(0x40000000),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        assessment['daysLeft'] as String,
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: assessment['color'] as Color,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
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
              top: 225,
              child: SizedBox(
                height: 150,

                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(5, (index) {
                      return Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(right: 10), // Add space between cards
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                top: -8,
                                bottom: -5,
                                child: SvgPicture.asset(
                                  'assets/vectors/group_713_x2.svg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned.fill(
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF3C3D8E),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        padding: const EdgeInsets.fromLTRB(5, 1, 5, 5),
                                        child: Text(
                                          index == 0 ? 'Flat' : index == 1 ? 'AI' : 'ERP',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        index == 0
                                            ? 'Grammars, Turing machines'
                                            : index == 1
                                            ? 'Knowledge Representation'
                                            : 'Hibernate, java \n'
                                            'sever program',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        index == 0
                                            ? 'Akshara\n\n'
                                            : index == 1
                                            ? 'DR.Meghana\n\n'
                                            : 'T.Dinesh\n\n',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color(0x80000000),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          '16 oct   |   9:30',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: const Color(0x80000000),
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
                    }).toList(),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}