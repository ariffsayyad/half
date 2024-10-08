import 'package:flutter/material.dart';
import 'package:flutter_app/pages/hostel_1.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Hostel2 extends StatefulWidget {
  const Hostel2({super.key});

  @override
  Hostel2State createState() => Hostel2State();
}

class Hostel2State extends State<Hostel2> {
  String? _selectedDate;

  void _onDateTap(String date) {
    setState(() {
      _selectedDate = date;
    });
  }

  Widget _buildDateBox(String date) {
    bool isSelected = _selectedDate == date;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 6.3, 0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF008000) : const Color(0x406C74B4),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.fromLTRB(15, 14, 15, 14),
        child: GestureDetector(
          onTap: () => _onDateTap(date),
          child: Center(
            child: Text(
              date,
              style: GoogleFonts.getFont(
                'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: isSelected ? const Color(0xFFFFFFFF) : const Color(0xFF000000),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 19.7, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -21,
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
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 35),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 256,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///back icon
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Hostel1()),
                                );
                              },
                              child: Container(
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
                                          'assets/vectors/icon_40_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Attendance',
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
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                decoration: BoxDecoration(
                                  color: const Color(0x406C74B4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 50,
                                height: 28,
                                child: Center(
                                  child: Transform(
                                    transform: Matrix4.identity()..setRotationZ(1.5707963268), // Rotate the vector
                                    alignment: Alignment.center, // Ensure the rotation is centered
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_18_x2.svg',
                                      width: 20,
                                      height: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0x406C74B4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(5.5, 4.5, 6.1, 4.5),
                                  child: Text('05-2024',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                decoration: BoxDecoration(
                                  color: const Color(0x406C74B4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 50,
                                height: 28,
                                child: Center(
                                  child: Transform(
                                    transform: Matrix4.identity()..setRotationZ(-1.5707963268), // Rotate the vector
                                    alignment: Alignment.center, // Ensure the rotation is centered
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_18_x2.svg',
                                      width: 20,
                                      height: 15,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0.3, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [...['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'].map((day) {
                              return Expanded(
                                child: Container(
                                  margin: day == 'Sun' ? EdgeInsets.zero : const EdgeInsets.only(right: 6.3),
                                  decoration: BoxDecoration(
                                    color: const Color(0x406C74B4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 4.5),
                                    child: Text(day,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color(0xFF565656),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var date in ['', '', '', '', '' , '1', '2'])
                                _buildDateBox(date),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var date in ['3', '4', '5', '6', '7' , '8', '9'])
                                _buildDateBox(date),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0.3, 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var date in ['10', '11', '12', '13', '14', '15', '16'])
                                _buildDateBox(date),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var date in ['17', '18', '19', '20', '21', '22', '23'])
                                _buildDateBox(date),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var date in ['24', '25', '26', '27', '28', '29', '30'])
                                _buildDateBox(date),
                            ],
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
    );
  }
}
