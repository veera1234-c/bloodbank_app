import 'package:bloodbank_app/onboarding/Onboarding0.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => MyOnboardingPage())));
          },
          child: Center(
            child: Image.asset("bloodbank.png"),
          ),
        ),
      ),
    );
  }
}
