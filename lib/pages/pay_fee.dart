import 'package:flutter/material.dart';
import 'package:flutter_app/pages/fee.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

void main() {
  runApp(const MaterialApp(
    home: PayFee(),
  ));
}

class PayFee extends StatelessWidget {
  const PayFee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [



                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity, // Make sure the width is full to center text
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Center all content in the Row
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigate to StudentHomePage after login
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fee()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 1, 10, 3), // Adjusted margin for spacing
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                  'assets/vectors/icon_11_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'University Fee',
                                style: GoogleFonts.getFont(
                                  'Roboto',
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
                ),


                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Text(
                    "Actual Amount        : 1,25,000\n"
                        "Semester Fee          : 62175\n"
                        "Start Date                 : 05/05/2023\n"
                        "Due Date                   : 15/06/2023\n"
                        "Penalty                      : -------\n"
                        "Status                        : Un Paid",
                    style: GoogleFonts.getFont(
                      'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(13, 0, 0, 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF008000),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: const SizedBox(
                                      width: 12,
                                      height: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 3),
                              child: Text(
                                'Pay Year Fee            =  ₹125000',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 7.5, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 5, 11, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: const SizedBox(
                                      width: 12,
                                      height: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'Pay Semester Fee   =  ₹62175',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.credit_card),
                                  title: const Text('Debit / Credit Card'),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const CardDetailsScreen()),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.account_balance),
                                  title: const Text('Net Banking'),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const NetBankingScreen()),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.qr_code),
                                  title: const Text('UPI'),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const UPIDetailsScreen()),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.payment),
                                  title: const Text('Paypal'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF134074),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.fromLTRB(15, 4, 15.1, 4),
                      child: Text(
                        'Payment',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          height: 1.3,
                          letterSpacing: 0.2,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 50,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x403C3D8E),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const SizedBox(
                  width: 390,
                  height: 231,
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Details', style: GoogleFonts.getFont('Roboto', fontSize: 20)),
        backgroundColor: const Color(0xFF134074),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Card Details',
              style: GoogleFonts.getFont(
                'Roboto',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Card Number',
                hintText: '1234 5678 9012 3456',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Expiry Date',
                hintText: 'MM/YY',
              ),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CVV',
                hintText: '123',
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF134074),
              ),
              onPressed: () {
                // Handle payment processing here
              },
              child: Text('Pay', style: GoogleFonts.getFont('Inter', fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

class NetBankingScreen extends StatelessWidget {
  const NetBankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Net Banking', style: GoogleFonts.getFont('Roboto', fontSize: 20)),
        backgroundColor: const Color(0xFF134074),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Net Banking Credentials',
              style: GoogleFonts.getFont(
                'Roboto',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User ID',
                hintText: 'Enter your user ID',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF134074),
              ),
              onPressed: () {
                // Handle Net Banking login and payment processing here
              },
              child: Text('Login', style: GoogleFonts.getFont('Inter', fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

class UPIDetailsScreen extends StatelessWidget {
  const UPIDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPI Details', style: GoogleFonts.getFont('Roboto', fontSize: 20)),
        backgroundColor: const Color(0xFF134074),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter UPI Details',
              style: GoogleFonts.getFont(
                'Roboto',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UPI ID',
                hintText: 'example@upi',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'PIN',
                hintText: 'Enter your UPI PIN',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF134074),
              ),
              onPressed: () {
                // Handle UPI payment processing here
              },
              child: Text('Pay', style: GoogleFonts.getFont('Inter', fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
