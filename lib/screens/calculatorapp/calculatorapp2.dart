import 'package:flutter/material.dart';

class CalculatorAppTwo extends StatefulWidget {
  const CalculatorAppTwo({super.key});

  @override
  State<CalculatorAppTwo> createState() => _CalculatorAppTwoState();
}

class _CalculatorAppTwoState extends State<CalculatorAppTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
      ),
      body: Column(children: [
        ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
            onPressed: () {},
            child: Text("+"))
      ]),
    );
  }
}
