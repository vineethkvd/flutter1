import 'package:flutter/material.dart';
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 3"),
      ),
      body: Center(
        child: Column(mainAxisAlignment:MainAxisAlignment.center,children: [
         Text("page 3")

        ]),
      ),
    );
  }
}
