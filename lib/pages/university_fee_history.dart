import 'package:flutter/material.dart';
import 'package:flutter_app/pages/fee.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'package:flutter_app/pages/student_login_page.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UniversityFeeHistory extends StatelessWidget {
  const UniversityFeeHistory({super.key});

  Widget buildFeeDetails(String year, String paymentDate, String academicYear,
      String totalAmount, String merchantTxnID, String txnID, String mode) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFBCD3A),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              year,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: "Payment Date       = $paymentDate\n"
                  "Academic Year      = $academicYear\n"
                  "Total Amount       = $totalAmount\n"
                  "\nPayment Details\n\n"
                  "Merchant TxnID       = $merchantTxnID\n"
                  "Txn ID       = $txnID\n"
                  "Mode       = $mode",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              'assets/vectors/download_animations_8_x2.svg',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.fromLTRB(20, 69, 20, 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const StudentHomePage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/icon_37_x2.svg',
                      width: 24,
                      height: 24,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center, // Center the Result text
                        child: Text(
                          'University Fee History',
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
              const SizedBox(height: 12),
              buildFeeDetails(
                'Year 1',
                '18-07-2023 07:33:51 PM',
                '2023-24',
                '1,25,000.00',
                '74031_1807202319335',
                'E230718TD1W4MG',
                'UPI',
              ),
              buildFeeDetails(
                'Year 2',
                '18-07-2024 07:33:51 PM',
                '2024-25',
                '1,30,000.00',
                '74031_1807202419335',
                'E230718TD2W4MG',
                'Card',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
