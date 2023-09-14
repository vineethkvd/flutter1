import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          "Flutter",
          style: TextStyle(
            fontSize: 25,
            color: Colors.pink
          ),
        ),
      ),
      body: const Text(
          "Hi Vineeth",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 36
        ),
      ),
    );
  }
}
