import 'dart:developer';
import 'package:bloodbank_app/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../constants/routes.dart';
import '../utils/screen_utils.dart';

class MobilenumberScreen extends StatefulWidget {
  const MobilenumberScreen({super.key});

  @override
  State<MobilenumberScreen> createState() => _MobilenumberScreenState();
}

class _MobilenumberScreenState extends State<MobilenumberScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();

  TextEditingController mobilenumbertextcontroller = TextEditingController();

  Future<void> _login() async {
    if (mobilenumbertextcontroller.text.isNotEmpty) {
      print(mobilenumbertextcontroller.text);
      //Navigator.pushNamed(context, Routes.otpScreen);
    }
  }

  @override
  void initState() {
    super.initState();
    Utilities.logger.i("mobile_number.dart");
    _auth.signInWithProvider(googleAuthProvider).then((value) {
      log("value is $value");
    }); //for android
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
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
                      padding: EdgeInsets.fromLTRB(60, 14, 60, 17),
                      width: 361,
                      height: 53,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "+91 ",
                            style: TextStyle(
                              fontSize: 20,
                              color: MyColors.redPrimary,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 180,
                            child: TextField(
                              controller: mobilenumbertextcontroller,
                              decoration: InputDecoration(
                                // prefix: Text(
                                //   '+91',
                                //   style: TextStyle(
                                //     fontSize: 20,
                                //     color: MyColors.redPrimary,
                                //   ),
                                // ),
                                border: InputBorder.none,

                                hintText: "Enter your number here",
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 67,
              ),

              SizedBox(
                height: 53,
                width: 263,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: MyColors.redPrimary,
                    //side: BorderSide(width:3, color:Colors.brown), //border width and color

                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(4)),
                    //elevation: 3,
                    //padding: EdgeInsets.all(20) //content padding inside button
                  ),
                  onPressed: () => _login,
                  child: const Text(
                    "Get OTP",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: 53,
              //   width: 263,
              //   decoration: BoxDecoration(
              //     color: MyColors.redPrimary,
              //     borderRadius: BorderRadius.circular(4),
              //   ),
              //   child: Center(
              //       child: Text(
              //     "Get OTP",
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
              //   )),
              // )
              TextButton(
                  onPressed: () => {
                        Navigator.pushNamed(context, Routes.signUpScreen),
                      },
                  child: Text("Sign UP")),
            ]),
      )),
    );
  }
}
