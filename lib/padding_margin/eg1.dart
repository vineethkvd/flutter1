import 'package:flutter/material.dart';

class PaddingMarginSample extends StatefulWidget {
  const PaddingMarginSample({super.key});

  @override
  State<PaddingMarginSample> createState() => _PaddingMarginSampleState();
}

class _PaddingMarginSampleState extends State<PaddingMarginSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding Margin"),
      ),
      body: Container(
        color: Colors.purple,
          margin: EdgeInsets.all(30),
        alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(30),
            width: 200.0,
            height: 100.0,
            color: Colors.green,
            child: Text("Hello! I am in the container widget", style: TextStyle(fontSize: 25)),
          ),
          Container(
            width: 200.0,
            height: 100.0,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text("Hello! I am in the container widget", style: TextStyle(fontSize: 25)),
            ),
          )],
      )),
    );
  }
}
