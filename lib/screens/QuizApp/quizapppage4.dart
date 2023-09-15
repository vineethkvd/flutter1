import 'package:flutter/material.dart';

class QuizAppPage4 extends StatefulWidget {
  const QuizAppPage4({super.key});

  @override
  State<QuizAppPage4> createState() => _QuizAppPage4State();
}

enum planet { mars,venus,jupiter,saturn }

class _QuizAppPage4State extends State<QuizAppPage4> {
  var _planet = planet.mars;
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
              child: Text("Which planet is known as the Red Planet?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            RadioListTile(
              title: const Text("Mars"),
              value: planet.mars,
              groupValue: _planet,
              onChanged: (value) {
                setState(() {
                  _planet = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Venus"),
              value: planet.venus,
              groupValue: _planet,
              onChanged: (value) {
                setState(() {
                  _planet = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Jupiter"),
              value: planet.jupiter,
              groupValue: _planet,
              onChanged: (value) {
                setState(() {
                  _planet = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("saturn"),
              value: planet.saturn,
              groupValue: _planet,
              onChanged: (value) {
                setState(() {
                  _planet = value!;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = _planet;
                  });
                },
                child: const Text("Submit")),
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
