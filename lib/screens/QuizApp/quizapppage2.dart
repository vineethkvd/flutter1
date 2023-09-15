import 'package:flutter/material.dart';
class QuizAppPage2 extends StatefulWidget {
  const QuizAppPage2({super.key});

  @override
  State<QuizAppPage2> createState() => _QuizAppPage2State();
}

enum mountain { mount_everest, k2, kangchenjunga, makalu }

class _QuizAppPage2State extends State<QuizAppPage2> {
  var _mountain = mountain.mount_everest;
  var _result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("What is the tallest mountain in the world?",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            RadioListTile(
              title: const Text("Mount Everest"),
              value: mountain.mount_everest,
              groupValue:_mountain,
              onChanged: (value) {
                setState(() {
                  _mountain=value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("K2"),
              value: mountain.k2,
              groupValue: _mountain,
              onChanged: (value) {
                setState(() {
                  _mountain=value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Kangchenjunga"),
              value: mountain.kangchenjunga,
              groupValue:_mountain,
              onChanged: (value) {
                setState(() {
                  _mountain=value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("makalu"),
              value:mountain.makalu,
              groupValue: _mountain,
              onChanged: (value) {
                setState(() {
                  _mountain=value!;
                });
              },
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                _result=_mountain;
              });
            }, child: const Text("Submit")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("You are clicked : $_result"),
            )
          ],
        ),
      ),
    );
  }
}
