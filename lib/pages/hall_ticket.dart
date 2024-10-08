import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_app/pages/student_home_page.dart';

class HallTicket extends StatefulWidget {
  const HallTicket({super.key});

  @override
  HallTicketState createState() {
    return HallTicketState();
  }
}

class HallTicketState extends State<HallTicket> {
  bool _showPracticalAnimation = false;
  bool _showTheoryAnimation = false;
  bool _showAssignmentAnimation = false;
  bool _showProjectAnimation = false;

  void _startAnimation(String boxType) {
    setState(() {
      if (boxType == 'New Box') {
      } else if (boxType == 'Practical') {
        _showPracticalAnimation = true;
      } else if (boxType == 'Theory') {
        _showTheoryAnimation = true;
      } else if (boxType == 'Assignment') {
        _showAssignmentAnimation = true;
      } else if (boxType == 'Project') {
        _showProjectAnimation = true;
      }
    });

    // Simulate a delay for animation
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        if (boxType == 'New Box') {
        } else if (boxType == 'Practical') {
          _showPracticalAnimation = false;
        } else if (boxType == 'Theory') {
          _showTheoryAnimation = false;
        } else if (boxType == 'Assignment') {
          _showAssignmentAnimation = false;
        } else if (boxType == 'Project') {
          _showProjectAnimation = false;
        }
      });

      // Show a popup message
      _showPopupMessage(context, "$boxType Complete");
    });
  }

  void _showPopupMessage(BuildContext context, String message) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 50.0,
        left: MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width * 0.1,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    // Remove the popup message after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }

  Widget buildTicket(String title, String asset, bool showAnimation) {
    return GestureDetector(
      onTap: () => _startAnimation(title),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFFBCD3A),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.fromLTRB(0, 19, 17, 19),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            if (showAnimation)
              SizedBox(
                width: 33,
                height: 33,
                child: SvgPicture.asset(
                  asset,
                  placeholderBuilder: (context) => const CircularProgressIndicator(),
                ),
              ),
          ],
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
      padding: const EdgeInsets.fromLTRB(20, 69, 20, 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
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
                  width: 431,
                  height: 228,
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
                        builder: (context) => const StudentHomePage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 17),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        width: 24,
                        height: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/vectors/icon_30_x2.svg',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Hall Tickets',
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
              // New first box with animation
              ///buildTicket('New Box', 'assets/vectors/animation_icon.svg', _showNewBoxAnimation),
              // Existing boxes
              buildTicket('Practical', 'assets/vectors/download_animation_8_x2.svg', _showPracticalAnimation),
              buildTicket('Theory', 'assets/vectors/download_animation_8_x2.svg', _showTheoryAnimation),
              buildTicket('Supply Practical', 'assets/vectors/download_animation_8_x2.svg', _showAssignmentAnimation),
              buildTicket('Supply Theory', 'assets/vectors/download_animation_8_x2.svg', _showProjectAnimation),
            ],
          ),
        ],
      ),
    );
  }
}
