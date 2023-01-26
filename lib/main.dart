import 'package:bloodbank_app/onboarding/Onboarding0.dart';
import 'package:bloodbank_app/screens/OtpScreen.dart';
import 'package:bloodbank_app/screens/all_messages.dart';
import 'package:bloodbank_app/screens/donors_map.dart';
import 'package:bloodbank_app/screens/find_donors.dart';
import 'package:bloodbank_app/screens/history.dart';
import 'package:bloodbank_app/screens/home.dart';
import 'package:bloodbank_app/screens/incoming_request.dart';
import 'package:bloodbank_app/screens/messages.dart';
import 'package:bloodbank_app/screens/signup_screen.dart';
import 'package:bloodbank_app/screens/splashscreen.dart';
import 'package:bloodbank_app/screens/onboarding.dart';
import 'package:bloodbank_app/screens/mobilenumber.dart';
import 'package:flutter/material.dart';

import 'constants/routes.dart';
import 'onboarding/Onboarding1.dart';
import 'onboarding/Onboarding2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(265, 53)),
                backgroundColor: MaterialStatePropertyAll(Color(0xA8FF0E0E)))),
      ),
      title: 'Blood Bank App',
      home: SplashScreen(),
      //initialRoute: Routes.otpScreen,
      routes: {
        // "/": (context) => SplashScreen(),
        Routes.onboardingScreen: (context) => MyOnboardingPage(),
        Routes.onboarding1Screen: (context) => OnboardingPage1(),
        Routes.onboarding2Screen: (context) => OnboardingPage2(),
        Routes.loginScreen: (context) => MobilenumberScreen(),
        Routes.otpScreen: (context) => OtpScreen(),
        Routes.signUpScreen: (context) => SignUpScreen(),
        Routes.home: (context) => Home(),
        Routes.findDonors: (context) => FindDonors(),
        Routes.incomingRequests: (context) => IncomingRequests(),
        Routes.history: (context) => History(),
        Routes.allMessages: (context) => AllMessages(),
        Routes.donorsMap: (context) => DonorsMap(),
        Routes.messages: (context) => Messages(),
      },
    );
  }
}
