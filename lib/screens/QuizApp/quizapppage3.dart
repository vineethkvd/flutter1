import 'package:flutter/material.dart';

class QuizAppPage3 extends StatefulWidget {
  const QuizAppPage3({super.key});

  @override
  State<QuizAppPage3> createState() => _QuizAppPage3State();
}

enum monalisa { leonardo_da_vinci, pablo_picasso, vincent_van_gogh,michelangelo}

class _QuizAppPage3State extends State<QuizAppPage3> {
  var _monalisa = monalisa.leonardo_da_vinci;
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
              child: Text("Who painted the mona lisa?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            RadioListTile(
              title: const Text("Leonardo_da Vinci"),
              value: monalisa.leonardo_da_vinci,
              groupValue: _monalisa,
              onChanged: (value) {
                setState(() {
                  _monalisa = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Pablo Picasso"),
              value: monalisa.pablo_picasso,
              groupValue: _monalisa,
              onChanged: (value) {
                setState(() {
                  _monalisa = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Vincent Van Gogh"),
              value: monalisa.vincent_van_gogh,
              groupValue: _monalisa,
              onChanged: (value) {
                setState(() {
                  _monalisa = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Michelangelo"),
              value: monalisa.michelangelo,
              groupValue: _monalisa,
              onChanged: (value) {
                setState(() {
                  _monalisa = value!;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = _monalisa;
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
