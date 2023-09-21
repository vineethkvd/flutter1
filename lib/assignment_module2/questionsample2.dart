import 'package:flutter/material.dart';

class QuestionSample2 extends StatefulWidget {
  const QuestionSample2({super.key});

  @override
  State<QuestionSample2> createState() => _QuestionSample2State();
}

enum lion { Carnivore, Herbivore, Omnivore }

enum giraffe { Carnivore, Herbivore, Omnivore }

enum elephant { Carnivore, Herbivore, Omnivore }

enum tiger { Carnivore, Herbivore, Omnivore }

enum bear { Carnivore, Herbivore, Omnivore }

class _QuestionSample2State extends State<QuestionSample2> {
  var _lion = lion.Carnivore;
  var _giraffe = giraffe.Carnivore;
  var _elephant = elephant.Carnivore;
  var _tiger = tiger.Carnivore;
  var _bear = bear.Carnivore;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kids Quiz App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select correct answers from below:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lion is:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: lion.Carnivore,
                  groupValue: _lion,
                  onChanged: (value) {
                    setState(() {
                      _lion = value!;
                    });
                  },
                ),
                const Text(
                  "Carnivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: lion.Herbivore,
                  groupValue: _lion,
                  onChanged: (value) {
                    setState(() {
                      _lion = value!;
                    });
                  },
                ),
                const Text(
                  "Herbivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: lion.Omnivore,
                  groupValue: _lion,
                  onChanged: (value) {
                    setState(() {
                      _lion = value!;
                    });
                  },
                ),
                const Text(
                  "Omnivore",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Giraffe is:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: giraffe.Carnivore,
                  groupValue: _giraffe,
                  onChanged: (value) {
                    setState(() {
                      _giraffe = value!;
                    });
                  },
                ),
                const Text(
                  "Carnivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: giraffe.Herbivore,
                  groupValue: _giraffe,
                  onChanged: (value) {
                    setState(() {
                      _giraffe = value!;
                    });
                  },
                ),
                const Text(
                  "Herbivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: giraffe.Omnivore,
                  groupValue: _giraffe,
                  onChanged: (value) {
                    setState(() {
                      _giraffe = value!;
                    });
                  },
                ),
                const Text(
                  "Omnivore",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Elephant is:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: elephant.Carnivore,
                  groupValue: _elephant,
                  onChanged: (value) {
                    setState(() {
                      _elephant = value!;
                    });
                  },
                ),
                const Text(
                  "Carnivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: elephant.Herbivore,
                  groupValue: _elephant,
                  onChanged: (value) {
                    setState(() {
                      _elephant = value!;
                    });
                  },
                ),
                Text(
                  "Herbivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: elephant.Omnivore,
                  groupValue: _elephant,
                  onChanged: (value) {
                    setState(() {
                      _elephant = value!;
                    });
                  },
                ),
                Text(
                  "Omnivore",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Tiger is:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: tiger.Carnivore,
                  groupValue: _tiger,
                  onChanged: (value) {
                    setState(() {
                      _tiger = value!;
                    });
                  },
                ),
                Text(
                  "Carnivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: tiger.Herbivore,
                  groupValue: _tiger,
                  onChanged: (value) {
                    setState(() {
                      _tiger = value!;
                    });
                  },
                ),
                Text(
                  "Herbivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: tiger.Omnivore,
                  groupValue: _tiger,
                  onChanged: (value) {
                    setState(() {
                      _tiger = value!;
                    });
                  },
                ),
                Text(
                  "Omnivore",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Bear is:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: bear.Carnivore,
                  groupValue: _bear,
                  onChanged: (value) {
                    setState(() {
                      _bear = value!;
                    });
                  },
                ),
                Text(
                  "Carnivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: bear.Herbivore,
                  groupValue: _bear,
                  onChanged: (value) {
                    setState(() {
                      _bear = value!;
                    });
                  },
                ),
                Text(
                  "Herbivore",
                  style: TextStyle(fontSize: 20),
                ),
                Radio(
                  value: bear.Omnivore,
                  groupValue: _bear,
                  onChanged: (value) {
                    setState(() {
                      _bear = value!;
                    });
                  },
                ),
                Text(
                  "Omnivore",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Result"),
                          content: Text("Your score is 2 out of 5"),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.of(context).pop();
                                  });
                                },
                                child: Text("ok"))
                          ],
                        );
                      },
                    );
                  });
                },
                child: Text("Check final score")),
            ElevatedButton(onPressed: () {

            }, child: Text("Reset Selection"))
          ],
        ),
      ),
    );
  }
}
