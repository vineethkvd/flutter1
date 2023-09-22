import 'package:flutter/material.dart';

class GridViewSample extends StatefulWidget {
  const GridViewSample({super.key});

  @override
  State<GridViewSample> createState() => _GridViewSampleState();
}

class _GridViewSampleState extends State<GridViewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
      ),
      // gridDelegate is a property that controls how items are shown in a list
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
          scrollDirection: Axis.horizontal,
          children: [
            Image.network('https://picsum.photos/250?image=1'),
            Image.network('https://picsum.photos/250?image=2'),
            Image.network('https://picsum.photos/250?image=3'),
            Image.network('https://picsum.photos/250?image=4'),
            Image.network('https://picsum.photos/250?image=1'),
            Image.network('https://picsum.photos/250?image=2'),
            Image.network('https://picsum.photos/250?image=3'),
            Image.network('https://picsum.photos/250?image=4'),
            Image.network('https://picsum.photos/250?image=1'),
            Image.network('https://picsum.photos/250?image=2'),
            Image.network('https://picsum.photos/250?image=3'),
            Image.network('https://picsum.photos/250?image=4'),
            Image.network('https://picsum.photos/250?image=1'),
            Image.network('https://picsum.photos/250?image=2'),
            Image.network('https://picsum.photos/250?image=3'),
            Image.network('https://picsum.photos/250?image=4'),
            Image.network('https://picsum.photos/250?image=1'),
            Image.network('https://picsum.photos/250?image=2'),
            Image.network('https://picsum.photos/250?image=3'),
            Image.network('https://picsum.photos/250?image=4'),
            Image.network('https://picsum.photos/250?image=1'),
            Image.network('https://picsum.photos/250?image=2'),
            Image.network('https://picsum.photos/250?image=3'),
            Image.network('https://picsum.photos/250?image=4'),
          ]),
    );
  }
}
