import 'package:flutter/material.dart';
import 'package:flutter1/screens/navigator/page2.dart';
import 'package:flutter1/screens/navigator/todo.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late final List<Todo> todos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(onPressed:() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Page2();
          },));

        }, child:Text("Go to page") )
      ])),
    );
  }
}
