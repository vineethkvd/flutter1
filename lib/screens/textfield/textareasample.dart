import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  const TextFieldSample({super.key});

  @override
  State<TextFieldSample> createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  bool isVisible = true;
  var nameController = TextEditingController();
  var data = "Data : ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              obscureText: true,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.visibility),
                  suffixIcon: isVisible
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  hintText: "Enter Name",
                  label: const Text("Name")),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  data = nameController.text;
                });
                // print("Data : ${textEditingController.text}");
              },
              child: const Text("Show text")),
          Text(data),
          OutlinedButton(
              onPressed: () {}, child: const Text("Outlined Button")),
          TextButton(onPressed: () {}, child: const Text("Text Button"))
        ],
      ),
    );
  }
}
