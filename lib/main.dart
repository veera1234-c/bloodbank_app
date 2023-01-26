import 'package:bloodbank_app/onboarding/Onboarding0.dart';
import 'package:bloodbank_app/screens/OtpScreen.dart';
import 'package:bloodbank_app/screens/splashscreen.dart';
import 'package:bloodbank_app/screens/onboarding.dart';
import 'package:bloodbank_app/screens/mobilenumber.dart';
import 'package:flutter/material.dart';

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
      //home: const MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/Onboarding0": (context) => MyOnboardingPage(),
        "/otpScreen": (context) => OtpScreen(),
      },
    );
  }
}
