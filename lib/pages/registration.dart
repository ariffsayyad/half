import 'package:flutter/material.dart';
import 'package:flutter_app/pages/transport_1.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  Widget buildDropdown(String labelText, String hintText) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: GoogleFonts.getFont(
              'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.1,
              letterSpacing: 0.5,
              color: const Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 390,
            height: 50,
            child: Material(
              color: Colors.transparent, // Ensures Material widget does not add unwanted color
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFB8BBC2)),
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFFAFAFA),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.5,
                      color: const Color(0xFF313144),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          padding: const EdgeInsets.fromLTRB(20, 69, 20, 33),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: 0.1,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 2,
                        sigmaY: 2,
                      ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 270,
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
                                      builder: (context) => const Transport1()),
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
                                      width: 24,
                                      height: 24,
                                      child: SvgPicture.asset(
                                        'assets/vectors/icon_20_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Registration',
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
                  buildDropdown('Select City', 'Select Your City'),
                  buildDropdown('Select Area', 'Select Your Area'),
                  buildDropdown('Select Pickup Point', 'Select Your Pickup Point'),
                  buildDropdown('Select Shift', 'Select Your Shift'),
                  buildDropdown('Select Route', 'Select Your Route'),
                  buildDropdown('Select Yearly', 'Select Your Yearly'),
                  buildDropdown('Select FOC', 'Select Your FOC'),
                  buildDropdown('Select Fee', 'Select Your Fee'),
                  buildDropdown('Select Buss Pass', 'Select Your Buss Pass'),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Success'),
                                  content: const Text('Successfully Submitted'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Close the dialog
                                        Future.delayed(const Duration(seconds: 5), () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const Transport1()),
                                          );
                                        });
                                      },
                                      child: const Text('OK'),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          child: const Text('Renewal'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Success'),
                                  content: const Text('Successfully Submitted'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Close the dialog
                                        Future.delayed(const Duration(seconds: 2), () {
                                          Navigator.pushNamed(context, '/transport_1');
                                        });
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Text('Submit'),
                        ),
                      ],
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
}
