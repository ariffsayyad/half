import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/hostel_1.dart';

class Hostel3 extends StatefulWidget {
  const Hostel3({super.key});

  @override
  Hostel3State createState() => Hostel3State();
}

class Hostel3State extends State<Hostel3> {
  // List to track loading states for each form item
  final List<bool> _isLoadingList = [false, false, false];

  void _toggleLoading(int index) {
    setState(() {
      _isLoadingList[index] = true;
    });

    // Simulate a delay to show loading animation
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoadingList[index] = false;
      });

      // Show a notification indicating the download is complete
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Download complete for ${_getFormName(index)}'),
        ),
      );
    });
  }

  String _getFormName(int index) {
    switch (index) {
      case 0:
        return 'NOC';
      case 1:
        return 'Vacating';
      case 2:
        return 'Deposit Form';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 69, 0, 352),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Hostel1()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
                        width: 24,
                        height: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/vectors/icon_43_x2.svg',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Forms',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            _buildFormItem('NOC', 'assets/vectors/download_animations_8_x2.svg', 0),
            _buildFormItem('Vacating', 'assets/vectors/download_animations_8_x2.svg', 1),
            _buildFormItem('Deposit Form', 'assets/vectors/download_animations_8_x2.svg', 2),
            Opacity(
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
          ],
        ),
      ),
    );
  }

  Widget _buildFormItem(String text, String iconPath, int index) {
    return Container(
      margin: const EdgeInsets.fromLTRB(19, 0, 21, 9),
      decoration: BoxDecoration(
        color: const Color(0xFFFBCD3A),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 13, 17, 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the row's contents horizontally
          crossAxisAlignment: CrossAxisAlignment.center, // Center the row's contents vertically
          children: [
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xFF000000),
                  ),
                  textAlign: TextAlign.center, // Ensure text is centered within its container
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _toggleLoading(index),
              child: SizedBox(
                width: 33,
                height: 33,
                child: _isLoadingList[index]
                    ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    strokeWidth: 2,
                  ),
                )
                    : SvgPicture.asset(iconPath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
