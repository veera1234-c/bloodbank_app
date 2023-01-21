import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Container(
          child: Column(
            children: [
              Container(
                child: Text("Enter your mobile number"),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(60, 14, 176, 17),
                width: 265,
                height: 53,
                child: Text(
                  "+91 ",
                  style: TextStyle(color: Colors.red),
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(18),
                ),
              )
            ],
          ),
        )
      ])),
    );
  }
}
