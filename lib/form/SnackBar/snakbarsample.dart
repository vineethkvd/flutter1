import 'package:flutter/material.dart';

class SnakBarExample extends StatefulWidget {
  const SnakBarExample({super.key});

  @override
  State<SnakBarExample> createState() => _SnakBarExampleState();
}

class _SnakBarExampleState extends State<SnakBarExample> {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  void _showSnakBar(String data) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(data),
      duration: const Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnakBar example"),
      ),
      body: Column(children: [
        Form(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                    label: Text("Name"),
                    hintText: "Enter your name",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your password",
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    final name = nameController.text;
                    final password = passwordController.text;
                    if (name.isEmpty || password.isEmpty) {
                      _showSnakBar("Password and name can not be null");
                    }
                  });
                },
                child: const Text("Submit"))
          ],
        ))
      ]),
    );
  }
}
