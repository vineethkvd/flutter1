import 'package:flutter/material.dart';
class TableSample extends StatefulWidget {
  const TableSample({super.key});

  @override
  State<TableSample> createState() => _TableSampleState();
}

class _TableSampleState extends State<TableSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter table sample"),
      ),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(children: [

        ],),
      )),
    );
  }
}
