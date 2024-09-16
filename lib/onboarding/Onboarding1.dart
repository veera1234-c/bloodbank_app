import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:bloodbank_app/onboarding/Onboarding2.dart';
import 'package:bloodbank_app/widgets/onboardingwidgets.dart';
import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage2()),
            )
          },
          child: Container(
            color: Colors.red,
            child: onboardingWidget(
              onboardingData[1]["text"]!,
              imageUrl: onboardingData[1]["image_url"],
            ),
          ),
        ),
      ),
    );
  }
}
