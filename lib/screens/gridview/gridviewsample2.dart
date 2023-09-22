import 'package:flutter/material.dart';

class GridViewSample2 extends StatefulWidget {
  const GridViewSample2({super.key});

  @override
  State<GridViewSample2> createState() => _GridViewSample2State();
}

class _GridViewSample2State extends State<GridViewSample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
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
