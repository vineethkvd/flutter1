import 'package:flutter/material.dart';
class ButtonSample extends StatelessWidget {
  const ButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ElevatedButton(onPressed: (){}, child: Text("ElevatedButton")),
            OutlinedButton(onPressed: (){}, child: Text("OutlinedButton")),
            TextButton(onPressed: (){}, child: Text("TextButton"))
          ],
        ),
      ),
    );

  }
}
