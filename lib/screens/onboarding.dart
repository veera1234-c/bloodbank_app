import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Color(0xffFa4848),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset("healthCheck.png"),
          Container(
            padding: EdgeInsets.only(left: 57, right: 56),
            child: Text(
              "To be a responsible donor, you must get a check-up.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          )
        ]),
      ),
    ));
  }
}
