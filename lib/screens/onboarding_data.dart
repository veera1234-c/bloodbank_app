import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              color: Color(0xffFA4848),
              child: SingleChildScrollView(
                  child: Column(
                children: onboardingData.map(),
              )))),
    );
  }
}
