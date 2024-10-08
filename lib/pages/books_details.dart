import 'package:flutter/material.dart';
import 'package:flutter_app/pages/books_list.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksDetails extends StatelessWidget {
  const BooksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 20, 18),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 231,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const BooksList()),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 1, 0, 3),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Positioned(
                                    left: 6.7,
                                    top: 7.3,
                                    child: SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 10.7,
                                        height: 9.3,
                                        child: SvgPicture.asset(
                                          'assets/vectors/icon_35_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Details',
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
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF171B36),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SizedBox(
                        height: 228,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(28, 26, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
///image in top container
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 26, 0, 9),
                                width: 91,
                                child: Positioned(
                                  left: -49.7,
                                  bottom: 0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/image_6.png',
                                        ),
                                      ),
                                    ),
                                    child: const SizedBox(
                                      width: 189.6,
                                      height: 107,
                                    ),
                                  ),
                                ),
                              ),
///text in top container
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 30, 50, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'The Psychology of Money',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: const Color(0xFFFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "The psychology of money is the study of our behavior with money.\n"
                                                "Success with money isn't about knowledge, IQ or how good you are at\n"
                                                "math. It's about behavior, and everyone is prone to certain behaviors\n"
                                                "over others.",
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 8,
                                              height: 1.5,
                                              color: const Color(0xFFDDDDE2),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(1),
                                            child: SizedBox(
                                              width: 17,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/star_1_x2.svg',
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(1),
                                            child: SizedBox(
                                              width: 17,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/star_2_x2.svg',
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(1),
                                            child: SizedBox(
                                              width: 17,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/star_3_x2.svg',
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(1),
                                            child: SizedBox(
                                              width: 17,
                                              height: 17,
                                              child: SvgPicture.asset(
                                                'assets/vectors/star_4_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(1),
                                              child: SizedBox(
                                                width: 17,
                                                height: 17,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/star_5_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 2, 0, 3),
                                            child: Text(
                                              '(5.0)',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                                color: const Color(0xFFFFFFFF),
                                              ),
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
                      ),
                    ),
                  ),
///about the book text
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 238),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'About The Book',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color(0xFF4D506C),
                        ),
                      ),
                    ),
                  ),

///Chapter one text
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10.5, 5),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Chapter One',
                        style: GoogleFonts.getFont(
                          'Playfair Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          color: const Color(0xFF000000),
                          decorationColor: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),

///Chapter one container
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF000000)),
                    ),
                    child: Text(
                      'The infection comes as fever at night. If you take ill, watch the veins— the tributary of blood travelling down the arms. If they remain as they ever did, you have nothing to fear. If the blood darkens to an inky black, the infection has taken hold. The infection comes as fever at night.',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1.3,
                        color: const Color(0xFF9091A0),
                      ),
                    ),
                  ),

///matter in bottom
                  Container(
                    margin: const EdgeInsets.fromLTRB(1, 0, 8.4, 20),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.7,
                          color: const Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: '   ',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: 'W',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 33,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: 'as nine the first time the Physicians came in house. My uncle and his men were away My cousin Ione and her brothers played loudly in the kitchen, and my aunt did not hear the pounding at the door until the first man in white robes was already in the parlor. She did not have time to hide me. I was asleep, resting like a cat in the window.When she shook me awake, her voice was thick with fear. “Go to the wood,” she whispered, unlatching the window and gently pushing me through the casement to the ground below. ',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

///20 mins left in Chapter text
                  Container(
                    margin: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '20 mins left in Chapter',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color(0xFF686868),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

///background image
            Positioned(
              left: -21,
              top: 283,
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

///author bar
        Positioned(
          left: 21,
          right: 21,
          top: 230,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFFFFFFF),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x33000000),
                  offset: Offset(2, 2),
                  blurRadius: 15,
                ),
              ],
            ),
            child: SizedBox(
              width: 348,
              height: 90,
              child: Row(
                children: [
                  // Text section
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Author',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xFF9091A0),
                            ),
                          ),

                          Text(
                            'Morgan Housel',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: const Color(0xFF4D506C),
                            ),
                          ),
                          Text(
                            'Best Seller of New York Times',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: const Color(0xFF9091A0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),


        ///About the books
            Positioned(
              left: 0,
              top: 359,
              child: SizedBox(
                height: 217,
                child: Text(
                  "The Psychology of Money is an essential read for anyone\n"
                      "interested in being better with money. Fast-paced and\n"
                      "engaging, this book will help you refine your thoughts\n"
                      "towards money. You can finish this book in a week, unlike\n"
                      "other books that are too lengthy. The most important\n"
                      "emotions in relation to money are fear, guilt, shame and\n"
                      "envy. It's worth spending some effort to become aware\n"
                      "of the emotions that are especially tied to money for you\n"
                      "because, without awareness, they will tend to override\n"
                      "rational thinking and drive your actions.",
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF9091A0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}