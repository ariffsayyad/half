import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/student_home_page.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.fromLTRB(20, 69, 20, 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ///back ground
          Positioned(
            left: -13,
            top: 261,
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
          ///header
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///header
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 231,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigate to StudentHomePage after login
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const StudentHomePage()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 1, 0, 5),
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
                                        'assets/vectors/icon_4_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Events',
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

               ///event calender text month year text
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0.6, 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                        child: SizedBox(
                          width: 125,
                          child: Text(
                            'Event Calendar',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Month-Year',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color(0xBF000000),
                        ),
                      ),
                    ],
                  ),
                ),
                ///days texts
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 18.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                        .map(
                          (day) => Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 6.3),
                          decoration: BoxDecoration(
                            color: const Color(0x406C74B4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.fromLTRB(
                            day == 'Mon'
                                ? 8.2
                                : day == 'Tue'
                                ? 10.7
                                : day == 'Wed'
                                ? 7.7
                                : day == 'Thu'
                                ? 7.2
                                : day == 'Fri'
                                ? 15.2
                                : day == 'Sat'
                                ? 12.2
                                : 10.2,
                            4.5,
                            day == 'Mon'
                                ? 8.6
                                : day == 'Tue'
                                ? 11.5
                                : day == 'Wed'
                                ? 8.5
                                : day == 'Thu'
                                ? 7.5
                                : day == 'Fri'
                                ? 15.8
                                : day == 'Sat'
                                ? 12.8
                                : 10.8,
                            4.5,
                          ),
                          child: Text(
                            day,
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0xFF565656),
                            ),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ),
    
    ///1st row of calender
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ['26', '27', '28', '29', '30', '1', '2']
                            .map((day) => SizedBox(
                          width: 58,
                          height: 59,
                          child: Container(
                            margin: const EdgeInsets.only(right: 6.3),
                            decoration: BoxDecoration(
                              color: const Color(0x406C74B4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                day,
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: day == '1' || day == '2' ? FontWeight.w500 : FontWeight.w400,
                                  fontSize: 16,
                                  color: day == '1' || day == '2' ? const Color(0xFF000000) : const Color(0xFFB7B7B7),
                                ),
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                      ),
                      const SizedBox(height: 10), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ['3', '4', '5', '6', '7', '8', '9']
                            .map((day) => SizedBox(
                          width: 58,
                          height: 59,
                          child: Container(
                            margin: const EdgeInsets.only(right: 6.3),
                            decoration: BoxDecoration(
                              color: const Color(0x406C74B4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                day,
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                      ),
                      const SizedBox(height: 10), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ['1', '11', '12', '13', '14', '15', '16']
                            .map((day) => SizedBox(
                          width: 58,
                          height: 59,
                          child: Container(
                            margin: const EdgeInsets.only(right: 6.3),
                            decoration: BoxDecoration(
                              color: const Color(0x406C74B4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                day,
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                      ),
                      const SizedBox(height: 10), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ['17', '18', '19', '20', '21', '22', '23']
                            .map((day) => SizedBox(
                          width: 58,
                          height: 59,
                          child: Container(
                            margin: const EdgeInsets.only(right: 6.3),
                            decoration: BoxDecoration(
                              color: const Color(0x406C74B4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                day,
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                      ),
                      const SizedBox(height: 10), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ['24', '25', '26', '27', '28', '29', '30']
                            .map((day) => SizedBox(
                          width: 58,
                          height: 59,
                          child: Container(
                            margin: const EdgeInsets.only(right: 6.3),
                            decoration: BoxDecoration(
                              color: const Color(0x406C74B4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                day,
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                      ),
                      const SizedBox(height: 10), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ['31', '1', '2', '3', '4', '5', '6']
                            .map((day) => SizedBox(
                          width: 58,
                          height: 59,
                          child: Container(
                            margin: const EdgeInsets.only(right: 6.3),
                            decoration: BoxDecoration(
                              color: const Color(0x406C74B4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                day,
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                      ),
                    ],
                  ),
                ),

                /// up comming events
                Container(
                  margin: const EdgeInsets.fromLTRB(8.1, 0, 8.1, 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Up Coming Events',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ),

                ///horizontal scrolling container
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 47),
                  child: SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First Container
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                            width: 289, // Width for each container
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/dsc_021581.jpeg'),
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(8, 8, 5, 4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(1, 0, 1, 140),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFF1F3),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(10.3, 2, 10.3, 2),
                                            child: Text(
                                              'Doom',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                height: 1.4,
                                                color: const Color(0xFFC01048),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF0F9FF),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(10.2, 2, 10.2, 2),
                                            child: Text(
                                              '3 Days Event',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                height: 1.4,
                                                color: const Color(0xFF026AA2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text('Piet Doom Registratation'),
                                                  content: const Text('Greetings, Esteemed Participants, We are thrilled to invite you to the grandest celebration of culture, creativity, and talent – DOOM 2024! Prepare to be mesmerized by a spectacular showcase of diverse talents and join us in creating memories that will last a lifetime.Register yourself for the participation in your interested category.'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      child: const Text('Close'),
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFEEF4FF),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                              child: Text(
                                                'Read More',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  height: 1.4,
                                                  color: const Color(0xFF3538CD),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Second Container
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                            width: 289, // Width for each container
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/dsc_045851.jpeg'),
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(11, 8, 0, 4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 140),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFF1F3),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(10.4, 2, 10.4, 2),
                                            child: Text(
                                              'Fashion Show',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                height: 1.4,
                                                color: const Color(0xFFC01048),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF0F9FF),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(10.4, 2, 10.4, 2),
                                            child: Text(
                                              '1 Days Event',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                height: 1.4,
                                                color: const Color(0xFF026AA2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text('Event Details'),
                                                  content: const Text('Details about the Fashion Show event.'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      child: const Text('Close'),
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFEEF4FF),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                              child: Text(
                                                'Read More',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  height: 1.4,
                                                  color: const Color(0xFF3538CD),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Third Container
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                            width: 289, // Width for each container
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/image.jpeg'),
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(9, 8, 2, 4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 140),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFF1F3),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(10.5, 2, 10.5, 2),
                                            child: Text(
                                              'Traditional Dance',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                height: 1.4,
                                                color: const Color(0xFFC01048),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF0F9FF),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(10.4, 2, 10.4, 2),
                                            child: Text(
                                              '1 Days Event',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                height: 1.4,
                                                color: const Color(0xFF026AA2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text('Event Details'),
                                                  content: const Text('Details about the Traditional Dance event.'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      child: const Text('Close'),
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFEEF4FF),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                              child: Text(
                                                'Read More',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  height: 1.4,
                                                  color: const Color(0xFF3538CD),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                ///event partipation box
                Container(
                  width: 390, // Set the width to 390
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBCD3A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 1.6, 21),
                      child: Center( // Center the text within the container
                        child: Text(
                          'Event Participation',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}