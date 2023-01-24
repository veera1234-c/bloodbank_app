import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:flutter/material.dart';

class MyOnboardingScreen extends StatelessWidget {
  const MyOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Color(0xffFa4848),
        child: SingleChildScrollView(
          child: Column(
            children: onboardingData
                .map(
                  (onboardingSingleData) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(onboardingSingleData["image_url"]!),
                      Container(
                        padding: EdgeInsets.only(left: 57, right: 56),
                        child: Text(
                          onboardingSingleData["text"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    ));
  }
}
