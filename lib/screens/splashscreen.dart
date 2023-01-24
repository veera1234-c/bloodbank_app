import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      //floatingActionButton: FloatingActionButton(),
      body: SafeArea(
        child: Center(
          child: Image.asset("bloodbank.png"),
        ),
      ),
    );
  }
}