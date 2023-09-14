import 'package:flutter/material.dart';

class IconSamplePage extends StatefulWidget {
  const IconSamplePage({super.key});

  @override
  State<IconSamplePage> createState() => _IconSamplePageState();
}

class _IconSamplePageState extends State<IconSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Sample"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.settings,size: 40,color: Colors.red,),
              Icon(Icons.search,size: 40,color: Colors.yellow,),
              Icon(Icons.save,size: 40,color: Colors.blue,),
            ]),
      ),
    );
  }
}
