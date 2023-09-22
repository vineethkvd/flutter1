import 'package:flutter/material.dart';
class GridSample extends StatefulWidget {
  const GridSample({super.key});

  @override
  State<GridSample> createState() => _GridSampleState();
}

class _GridSampleState extends State<GridSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: Colors.yellow,
            width: 50,
            height: 50,
          ),
          Container(
            color: Colors.green,
            width: 50,
            height: 50,
          ),
          Container(
            color: Colors.blue,
            width: 50,
            height: 50,
          ),
          Container(
            color: Colors.black,
            width: 50,
            height: 50,
          ),
          Container(
            color: Colors.yellow,
            width: 50,
            height: 50,
          )
        ],

      ),
    );
  }
}
