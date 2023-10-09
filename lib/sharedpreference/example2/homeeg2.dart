import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeExample2 extends StatefulWidget {
  const HomeExample2({super.key});

  @override
  State<HomeExample2> createState() => _HomeExample2State();
}

class _HomeExample2State extends State<HomeExample2> {
  ClearData() {
    setState(() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('value');
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                ClearData();
              },
              child: Text("Logout")),
        )
      ]),
    );
  }
}
