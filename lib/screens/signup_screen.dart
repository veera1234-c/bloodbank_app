import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/constants/sharedPreferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
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
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> addDataToFireStore() async {
    await db.collection("users").add({"name": "Hrithik"}).then(
      (DocumentReference doc) =>
          print('DocumentSnapshot added with ID: ${doc.id}'),
    );
  }

  Future<void> addDataToSharedPrefs() async {
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      print("Valid");
      _formKey.currentState!.save();
      Navigator.pushNamed(context, Routes.home);
    }
  }

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

  String (newValue) => {
    newValue!= null && newValue.isNotEmpty
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
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
                    userDataFieldKey: SharedPrefsConstant.name.toString(),
                  ),
                  textFieldWithLabel(
                    "Date of Birth",
                    userDataFieldKey:
                        SharedPrefsConstant.dateOfBirth.toString(),
                  ),
                  textFieldWithLabel(
                    "Age",
                    userDataFieldKey: SharedPrefsConstant.age.toString(),
                  ),
                  textFieldWithLabel(
                    "Prevailing Health Conditions",
                    userDataFieldKey:
                        SharedPrefsConstant.healthConditions.toString(),
                  ),
                  textFieldWithLabel(
                    "Blood Group",
                    userDataFieldKey: SharedPrefsConstant.bloodGroup.toString(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: addDataToSharedPrefs,
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
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: addDataToFireStore,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(11)),
                      ),
                      child: Text(
                        'Add data to firestore',
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
              print(
                  " $userDataFieldKey is ${prefs.getString(userDataFieldKey)}"),
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
