import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

// Import pages
import 'package:flutter_app/pages/attandance.dart';
import 'package:flutter_app/pages/events.dart';
import 'package:flutter_app/pages/fee.dart';
import 'package:flutter_app/pages/feed_back.dart';
import 'package:flutter_app/pages/hall_ticket.dart';
import 'package:flutter_app/pages/hostel.dart';
import 'package:flutter_app/pages/hostel_1.dart';
import 'package:flutter_app/pages/library.dart';
import 'package:flutter_app/pages/map.dart';
import 'package:flutter_app/pages/map_1.dart';
import 'package:flutter_app/pages/movie_1.dart';
import 'package:flutter_app/pages/submission.dart';
import 'package:flutter_app/pages/transport.dart';
import 'package:flutter_app/pages/transport_1.dart';
import 'package:flutter_app/pages/call.dart';
import 'package:flutter_app/pages/notification.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/mail.dart';
import 'package:flutter_app/pages/time_table.dart';
import 'package:flutter_app/pages/result.dart';
import 'package:flutter_app/pages/internship.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  Widget _buildProfileInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name of the student', style: GoogleFonts.roboto(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.black)),
          const SizedBox(height: 4),
          Text('Student ERP Number', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black)),
          const SizedBox(height: 4),
          Text('Student Mobile Number', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black)),
          const SizedBox(height: 4),
          Text('Student University Mail ID', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black)),
        ],
      ),
    );
  }

  Widget _buildProfileDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (String label in ['Branch', 'Sem', 'Division', 'Roll.No', 'Batch'])
                Text(label, style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black)),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (String value in ['AI', '6', '6B3', '54', '2'])
                Text(value, style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMentorSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mentor', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: const Color(0xFF8A8A8A))),
              const SizedBox(height: 5),
              Text('MR/MS Mentor Name', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16, color: const Color(0xFF514646))),
            ],
          ),
          Row(
            children: [
              _buildIconButton('assets/vectors/notification_x2.svg', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NotificationPage()))),
              const SizedBox(width: 10),
              _buildIconButton('assets/vectors/vector_2_x2.svg', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Call()))),
              const SizedBox(width: 10),
              _buildIconButton('assets/vectors/logosgoogle_gmail_x2.svg', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Mail()))),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(String assetPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(assetPath, width: 20, height: 24),
    );
  }

  Widget _buildBox(String label, String imagePath, VoidCallback onTap, {bool isBlurred = false}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 122,
        height: 115,
        child: Opacity(
          opacity: isBlurred ? 0.7 : 1.0,
          child: ClipRect(
            child: BackdropFilter(
              filter: isBlurred ? ImageFilter.blur(sigmaX: 2, sigmaY: 2) : ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFAF8F8),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 4.0),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset(imagePath, fit: BoxFit.contain),
                        ),
                      ),
                      Text(label,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 12, color: const Color(0xFF000000)),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
        padding: const EdgeInsets.fromLTRB(12, 91, 10, 31),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(8, 0, 8, 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFBCD3A),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.fromLTRB(7, 14, 8, 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildProfileInfo(),
                            const Divider(color: Color(0xFFABABAB), thickness: 1),
                            _buildProfileDetails(),
                            const SizedBox(height: 6),
                            _buildMentorSection(),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 12,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Profile()));
                          },
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xBF2F88FF),
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 20, height: 10, child: SvgPicture.asset('assets/vectors/vector_30_x2.svg')),
                                  SizedBox(width: 22.3, height: 9.7, child: SvgPicture.asset('assets/vectors/vector_134_x2.svg')),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildBox('Calendar', 'assets/images/group_39577.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Map2()))),
                            _buildBox('Time Table', 'assets/images/time_management.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Hostel1()))),
                            _buildBox('Attendance', 'assets/images/attandance_icon_1.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Attandance()))),
                          ],
                        ),
                        const SizedBox(height: 20), // Space between rows
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildBox('Result', 'assets/images/result_icon_1.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Result()))),
                            _buildBox('Fee', 'assets/images/mobile_credit_card_and_money.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Fee()))),
                            _buildBox('Feedback', 'assets/images/bubble.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FeedBack()))),
                          ],
                        ),
                        const SizedBox(height: 20), // Space between rows
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildBox('Map', 'assets/images/trail_map.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Map2()))),
                            _buildBox('Hostel', 'assets/images/roommate_1.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Hostel1()))),
                            _buildBox('Submission', 'assets/images/image.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Submission()))),
                          ],
                        ),
                        const SizedBox(height: 20), // Space between rows
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildBox('Hall Ticket', 'assets/images/image_34.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HallTicket()))),
                            _buildBox('Events', 'assets/images/people_1.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Events()))),
                            _buildBox('Transport', 'assets/images/bus_21.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Transport1()))),
                          ],
                        ),
                        const SizedBox(height: 20), // Space between rows
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildBox('Movie', 'assets/images/film_clapper_popcorn_and_movie_tickets.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Movie1()))),
                            _buildBox('Library', 'assets/images/workplace_with_stacks_of_books.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Library()))),
                            _buildBox('Internship', 'assets/images/img_icons_81.png', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Internship()))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -13,
              top: 261,
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
          ],
        ),
      ),
    );
  }
}
