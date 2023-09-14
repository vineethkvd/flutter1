import 'package:flutter/material.dart';

class GesturesSample extends StatefulWidget {
  const GesturesSample({super.key});

  @override
  State<GesturesSample> createState() => _GesturesSampleState();
}

class _GesturesSampleState extends State<GesturesSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: GestureDetector(
        child: const Text(
          "Tap me",
          style: TextStyle(fontSize: 20),
        ),
        onTap: () {
          print("Clicked");
        },
      )),
    );
  }
}
