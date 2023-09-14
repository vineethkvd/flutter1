import 'package:flutter/material.dart';

class ImageSample extends StatefulWidget {
  const ImageSample({super.key});

  @override
  State<ImageSample> createState() => _ImageSampleState();
}

class _ImageSampleState extends State<ImageSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Kerala Blasters",
            style: TextStyle(fontFamily: 'OoohBaby', fontSize: 35),
          ),
          //Asset Image
          Container(
            height: 200,
            width: 300,
            child: const Image(image: AssetImage('assets/images/image1.jpg')),
          )
        ]),
      ),
    );
  }
}
