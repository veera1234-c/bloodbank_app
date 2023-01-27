import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Map<String, String> formData = {
      "name": "",
      "dateOfBirth": "",
    };

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: MyColors.redPrimary,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign Up",
                    style: TextStyle(
                      fontFamily: "PoorStory",
                      fontSize: 36,
                      color: Colors.white,
                    )),
                textFieldWithLabel("Your Name"),
                textFieldWithLabel("Date of Birth"),
                textFieldWithLabel("Age"),
                textFieldWithLabel("Prevailing Health Conditions"),
                textFieldWithLabel("Blood Group"),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        print("Valid");
                        _formKey.currentState!.save();
                        Navigator.pushNamed(context, Routes.home);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(11)),
                    ),
                    child: Text(
                      'REGISTER FOR CHECKUP',
                      style: TextStyle(
                        fontFamily: "PoorStory",
                        fontSize: 16,
                        color: MyColors.redPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textFieldWithLabel(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: "PoorStory",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              errorStyle: TextStyle(
                color: Colors.white,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: TextStyle(color: Colors.white),
            onSaved: (newValue) => {
              // formData["name"] =
              print(newValue)
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
