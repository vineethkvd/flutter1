import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
              maxWidth: 250, minWidth: 20, maxHeight: 250, minHeight: 20),
          decoration: const BoxDecoration(
            color: Colors.purple,
            image: DecorationImage(
                image:
                    NetworkImage("https://docs.flutter.dev/assets/images/dash/"
                        "dash-fainting.gif"),
                fit: BoxFit.fill),
          ),
          alignment: Alignment.center,
          child: const Text("FLUTTER",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
