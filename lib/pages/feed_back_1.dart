import 'package:flutter/material.dart';
import 'package:flutter_app/pages/feed_back.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBack1 extends StatelessWidget {
  const FeedBack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 69, 20, 20),
          decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: -21,
                top: 283,
                child: Opacity(
                  opacity: 0.1,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: SizedBox(
                      width: 431,
                      height: 228,
                      child: Image.asset('assets/images/back_ground_image.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const FeedBack()),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/vectors/icon_52_x2.svg', width: 24, height: 24),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Center(
                            child: Text('Forms', style: GoogleFonts.roboto(fontSize: 24)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                  Center(
                    child: Container(
                      width: 390,
                      height: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        color: const Color(0x403C3D8E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Teachers Weekly Feedback Form', style: GoogleFonts.roboto(fontSize: 16)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildRatingQuestion('How is the general state of the class?'),
                  _buildRatingQuestion('How is the course content?'),
                  _buildRatingQuestion('Please evaluate the audio and visual connectivity?'),
                  _buildRatingQuestion('The lecture in class was well-structured and coordinated.?'),
                  _buildRatingQuestion('The learning materials were readily available.?'),
                  _buildRatingQuestion('Please mention about the current course topic briefly.?'),
                  const SizedBox(height: 18),
                  Text('Please mention about the current course topic briefly.', style: GoogleFonts.roboto(fontSize: 16)),
                  const SizedBox(height: 10),
                  TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Write your honest Feedback1',
                      hintStyle: GoogleFonts.roboto(fontSize: 15, color: const Color(0x80000000)),
                      filled: true,
                      fillColor: const Color(0xBFD9D9D9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(10),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(color: const Color(0xFFE31E26), borderRadius: BorderRadius.circular(10)),
                      child: Text('Submit', style: GoogleFonts.roboto(fontSize: 16, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRatingQuestion(String question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question, style: GoogleFonts.inter(fontSize: 16)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            final rating = index + 1;
            return Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: const Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(25)),
                  child: Text('$rating', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                Text(rating == 1 ? 'Improve' : rating == 5 ? 'Excellent' : '', style: GoogleFonts.inter(fontSize: 14)),
              ],
            );
          }),
        ),
      ],
    );
  }
}
