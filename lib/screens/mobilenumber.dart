import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Enter your mobile number",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'PoorStory',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.fromLTRB(60, 14, 176, 17),
                      width: 265,
                      height: 53,
                      child: Text(
                        "+91 ",
                        style: TextStyle(
                          color: MyColors.redPrimary,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 67,
              ),
              Container(
                height: 53,
                width: 263,
                decoration: BoxDecoration(
                  color: MyColors.redPrimary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                    child: Text(
                  "Get OTP",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              )
            ]),
      )),
    );
  }
}
