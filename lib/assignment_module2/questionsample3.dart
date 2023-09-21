import 'package:flutter/material.dart';

class QuestionSample3 extends StatefulWidget {
  const QuestionSample3({super.key});

  @override
  State<QuestionSample3> createState() => _QuestionSample3State();
}

class _QuestionSample3State extends State<QuestionSample3> {
  var result;
  var num1Controller = TextEditingController();
  var num2Controller = TextEditingController();
  getsum() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num1Controller.text);
    result = num1 + num2;
  }

  getsub() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num1Controller.text);
    result = num1 - num2;
  }

  getmul() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num1Controller.text);
    result = num1 * num2;
  }

  getdiv() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num1Controller.text);
    result = num1 / num2;
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Number1",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: num1Controller,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Number2",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: num2Controller,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                   setState(() {
                     getsum();
                   });
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                   setState(() {
                     getsub();
                   });
                  },
                  child: const Text("-")),
              ElevatedButton(
                  onPressed: () {
                   setState(() {
                     getmul();
                   });
                  },
                  child: const Text("*")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      getdiv();
                    });
                  },
                  child: const Text("/"))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Result is${result}",
              style: const TextStyle(fontSize: 28),
            ),
          )
        ],
      ),
    );
  }
}
