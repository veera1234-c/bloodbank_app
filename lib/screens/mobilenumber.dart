import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MobilenumberScreen extends StatelessWidget {
  const MobilenumberScreen({super.key});

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
                  onPressed: () => {},
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
            ]),
      )),
    );
  }
}
