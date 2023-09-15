import 'package:flutter/material.dart';

class QuizAppPage1 extends StatefulWidget {
  const QuizAppPage1({super.key});

  @override
  State<QuizAppPage1> createState() => _QuizAppPage1State();
}

enum ocean { pacific_ocean, atlantic_ocean, indian_ocean, artic_ocean }

class _QuizAppPage1State extends State<QuizAppPage1> {
  var _ocean = ocean.pacific_ocean;
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
              child: Text("What is the largest ocean in the world?",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            RadioListTile(
              title: const Text("Pacific Ocean"),
              value: ocean.pacific_ocean,
              groupValue: _ocean,
              onChanged: (value) {
              setState(() {
                _ocean=value!;
              });
              },
            ),
            RadioListTile(
              title: const Text("Atlantic Ocean"),
              value: ocean.atlantic_ocean,
              groupValue: _ocean,
              onChanged: (value) {
                setState(() {
                  _ocean=value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Indian Ocean"),
              value: ocean.indian_ocean,
              groupValue: _ocean,
              onChanged: (value) {
                setState(() {
                  _ocean=value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Artic Ocean"),
              value: ocean.artic_ocean,
              groupValue: _ocean,
              onChanged: (value) {
                setState(() {
                  _ocean=value!;
                });
              },
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                _result=_ocean;
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
