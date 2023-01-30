import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  // Map<String, String> formData = {
  //   "name": "",
  //   "dateOfBirth": "",
  // };
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _formKey = GlobalKey<FormState>();
  late SharedPreferences prefs;

  @override
  void initState() {
    // TODO: implement initState
    onInit();
    super.initState();
  }

  // declaring a function so that the initState can call it without asynchrony
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
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
                textFieldWithLabel(
                  "Your Name",
                  userDataFieldKey: "name",
                ),
                textFieldWithLabel(
                  "Date of Birth",
                  userDataFieldKey: "dateOfBirth",
                ),
                textFieldWithLabel(
                  "Age",
                  userDataFieldKey: "age",
                ),
                textFieldWithLabel(
                  "Prevailing Health Conditions",
                  userDataFieldKey: "healthConditions",
                ),
                textFieldWithLabel(
                  "Blood Group",
                  userDataFieldKey: "bloodGroup",
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
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

  Widget textFieldWithLabel(String title, {required String userDataFieldKey}) {
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
              newValue != null && newValue.isNotEmpty
                  ? prefs.setString(
                      userDataFieldKey,
                      newValue,
                    )
                  : prefs.setString(userDataFieldKey, ""),
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
