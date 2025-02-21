import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:bloodbank_app/onboarding/Onboarding1.dart';
import 'package:bloodbank_app/widgets/onboardingwidgets.dart';
import 'package:flutter/material.dart';

class MyOnboardingPage extends StatelessWidget {
  const MyOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage1()),
            )
          },
          child: Container(
            color: Colors.red,
            child: onboardingWidget(
              onboardingData[0]["text"]!,
              imageUrl: onboardingData[0]["image_url"],
            ),
          ),
        ),
      ),
    );
  }
}
