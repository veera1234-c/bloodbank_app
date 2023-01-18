import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.teal.shade400,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  border: Border.all(width: 1, color: Colors.yellow),
                ),
                height: 80,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text("Task time details"),
                        ),
                        Container(
                          child: Text("Task name"),
                        )
                      ],
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.teal.shade400,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              height: 80,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.teal.shade400,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              height: 80,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
