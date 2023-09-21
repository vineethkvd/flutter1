import 'package:flutter/material.dart';
class QuestionSample1 extends StatefulWidget {
  const QuestionSample1({super.key});

  @override
  State<QuestionSample1> createState() => _QuestionSample1State();
}

class _QuestionSample1State extends State<QuestionSample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.person),
                Container(
                  child: Text("Person1"),
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.person),
                Container(
                  child: Text("Person2"),
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.person),
                Container(
                  child: Text("Person3"),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
