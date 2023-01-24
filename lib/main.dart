<<<<<<< HEAD
import 'package:bloodbank_app/screens/splashscreen.dart';
=======
import 'package:bloodbank_app/screens/onboarding.dart';
>>>>>>> 66254c237a200541a3de02e72131959c1aa5d777
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
      title: 'Blood Bank App',
      home: const MyHomePage(),
    );
  }
}
