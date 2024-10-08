import 'package:flutter/material.dart';
import 'package:flutter_app/pages/attandance.dart';
import 'package:flutter_app/pages/attandance_1.dart';
import 'package:flutter_app/pages/books_details.dart';
import 'package:flutter_app/pages/books_list.dart';
import 'package:flutter_app/pages/call.dart';
import 'package:flutter_app/pages/events.dart';
import 'package:flutter_app/pages/exam.dart';
import 'package:flutter_app/pages/exam_1.dart';
import 'package:flutter_app/pages/fee.dart';
import 'package:flutter_app/pages/feed_back.dart';
import 'package:flutter_app/pages/feed_back_1.dart';
import 'package:flutter_app/pages/gate_pass.dart';
import 'package:flutter_app/pages/group_319.dart';
import 'package:flutter_app/pages/hall_ticket.dart';
import 'package:flutter_app/pages/home_screen.dart';
import 'package:flutter_app/pages/hostel.dart';
import 'package:flutter_app/pages/hostel_1.dart';
import 'package:flutter_app/pages/hostel_2.dart';
import 'package:flutter_app/pages/hostel_3.dart';
import 'package:flutter_app/pages/internship.dart';
import 'package:flutter_app/pages/library.dart';
import 'package:flutter_app/pages/mail.dart';
import 'package:flutter_app/pages/map.dart';
import 'package:flutter_app/pages/map_1.dart';
import 'package:flutter_app/pages/miscellaneous_fee.dart';
import 'package:flutter_app/pages/movie_1.dart';
import 'package:flutter_app/pages/movie_2.dart';
import 'package:flutter_app/pages/notification.dart';
import 'package:flutter_app/pages/pay_fee.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/re_evaluvation.dart';
import 'package:flutter_app/pages/re_evaluvation_1.dart';
import 'package:flutter_app/pages/rectangle_172.dart';
import 'package:flutter_app/pages/registration.dart';
import 'package:flutter_app/pages/result.dart';
import 'package:flutter_app/pages/save.dart';
import 'package:flutter_app/pages/search_route.dart';
import 'package:flutter_app/pages/sem_1.dart';
import 'package:flutter_app/pages/student_home_page.dart';
import 'package:flutter_app/pages/student_login_page.dart';
import 'package:flutter_app/pages/submission.dart';
import 'package:flutter_app/pages/suppely_fee_pay.dart';
import 'package:flutter_app/pages/supplementary_exam_form.dart';
import 'package:flutter_app/pages/time_table.dart';
import 'package:flutter_app/pages/transport.dart';
import 'package:flutter_app/pages/transport_1.dart';
import 'package:flutter_app/pages/university_fee_history.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: Scaffold(
        body: HomeScreen(),

      ),
    );
  }
}
