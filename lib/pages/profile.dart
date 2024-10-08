import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/student_home_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextStyle infoStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Colors.black,
    letterSpacing: 0.5,
  );

  final TextStyle headerStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: Colors.black,
  );

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: headerStyle),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: infoStyle,
              children: [
                TextSpan(text: content),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 69, 18.6, 37),
        decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: -23.6,
              top: 283,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row with icon on the left and text centered
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const StudentHomePage()),
                      ),
                      child: SvgPicture.asset('assets/vectors/icon_48_x2.svg', width: 24, height: 24),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Information',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 24), // Add some space on the right if needed
                  ],
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 42),
                    decoration: BoxDecoration(
                      color: const Color(0xBF2F88FF),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: SizedBox(
                      width: 125,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 31),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/vectors/vector_87_x2.svg', width: 27, height: 27.7),
                            SvgPicture.asset('assets/vectors/vector_128_x2.svg', width: 42, height: 26.9),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                _buildSection(
                  'Personal information',
                  '''Student Name       : Sayyad Ariff
Gender             : Male
Date of Birth      : 07-02-2001
Place of Birth     : Visakhapatnam
Religion           : Islam
Category           : Open
Caste              : Muslim
Sub caste          : BC-E
Nationality        : Indian
Blood group        : O+
Mother tongue      : Telugu
NRI                : No
PAN                : --
Aadhaar card no.   : 9500 3006 3116
                  ''',
                ),
                _buildSection(
                  'Admission information',
                  '''Program             : PIET - 1 - Btech - AI
Quota               : South v 70
Type                : Regular
Semester            : 1
Year                : 2021
Academic year       : 2021-2022
Date of admission   : 28-10-2021
Claimed category    : --
Allotted category   : Open
Fee category        : Regular
Counselling round   : --
                  ''',
                ),
                _buildSection(
                  'Bank Information',
                  '''Name            : --
IFSC               : --
Branch Name        : --
Bank Account no    : --
                  ''',
                ),
                _buildSection(
                  'Contact information',
                  '''Mobile No 2             : ---
Email               : --
Address (permanent) : --
State               : --
Country             : --
Pin code            : --
Address (present)   : --
Claimed category    : --
State               : --
Country             : --
Pin code            : --
                  ''',
                ),
                _buildSection(
                  'Parents Information    (Father)',
                  '''Name       : --
Mobile             : --
Email      : --
Education Qualification     : --
Designation           : --
Occupation           : --
Company /Organization              : --
Occupation city          : --
Industry Type        : --
Sector Type        : --
Annual income      : --
Pan Card                : --
Aadhaar no.                : --
                  ''',
                ),
                _buildSection(
                  'Education Qualification Information',
                  '''Degree             : --
Exam Name               : --
Specialization                : --
Board            : --
School Name                : --
Passing year       : --
Seat no.   : --
Total Marks    : --
Percentage   : --
Passed from state        : --
                  ''',
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 1.4,
              top: 200,
              bottom: -19,
              child: Opacity(
                opacity: 0.3,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0x806C74B4),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const SizedBox(width: 390, height: 800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
