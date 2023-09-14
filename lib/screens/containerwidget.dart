import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
          height: 200,
          width: 200,
          alignment: Alignment.center,
          child: Text("Hello World"),

        ),
      ),
    );
  }
}
