import 'package:flutter/material.dart';
import 'package:powerlook/homepage.dart';
import 'package:powerlook/loginpage.dart';
import 'package:powerlook/otpverification.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'loginpage',
    routes: {
      'loginpage': (context) => const MyWidget(),
      'otpverification': (context) => const OtpverificationWidget(),
      'homepage': (context) => const HomeWidget(),
    },
  ));
}
