import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/student_home_page.dart'; // Import the StudentHomePage

class StudentLoginPage extends StatefulWidget {
  const StudentLoginPage({super.key});

  @override
  State<StudentLoginPage> createState() => _StudentLoginPageState();
}

class _StudentLoginPageState extends State<StudentLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          padding: const EdgeInsets.fromLTRB(20, 159, 20, 254),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 104),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/n_2.jpeg',
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: 390,
                    height: 188,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Text(
                  'Login',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(17, 0, 16, 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xBF6C74B4),
                    hintText: 'Email / Mobile number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 31),
                  ),
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(17, 0, 16, 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xBF6C74B4),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 31),
                  ),
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF000000),
                  ),
                  obscureText: true, // To hide the password input
                ),
              ),
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
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBCD3A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.fromLTRB(10, 11, 10, 11),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
