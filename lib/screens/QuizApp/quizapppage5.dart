import 'package:flutter/material.dart';

class QuizAppPage5 extends StatefulWidget {
  const QuizAppPage5({super.key});

  @override
  State<QuizAppPage5> createState() => _QuizAppPage5State();
}

enum capital { paris, mardrid,london,rome }

class _QuizAppPage5State extends State<QuizAppPage5> {
  var _capital = capital.paris;
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
              child: Text("What is the capital of france? ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            RadioListTile(
              title: const Text("Paris"),
              value: capital.paris,
              groupValue: _capital,
              onChanged: (value) {
                setState(() {
                  _capital = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Mardrid"),
              value: capital.mardrid,
              groupValue: _capital,
              onChanged: (value) {
                setState(() {
                  _capital = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("London"),
              value: capital.london,
              groupValue: _capital,
              onChanged: (value) {
                setState(() {
                  _capital = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Rome"),
              value: capital.rome,
              groupValue: _capital,
              onChanged: (value) {
                setState(() {
                  _capital = value!;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = _capital;
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
