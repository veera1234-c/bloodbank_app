import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OtpFieldController otpController = OtpFieldController();
    return Scaffold(
      body: Container(
        child: OTPTextField(
            controller: otpController,
            length: 5,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 45,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 15,
            style: TextStyle(fontSize: 17),
            onChanged: (pin) {
              print("Changed: " + pin);
            },
            onCompleted: (pin) {
              print("Completed: " + pin);
            }),
      ),
    );
  }
}
