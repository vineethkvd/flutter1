import 'package:flutter/material.dart';
class FormSamplePage extends StatefulWidget {
  const FormSamplePage({super.key});

  @override
  State<FormSamplePage> createState() => _FormSamplePageState();
}

class _FormSamplePageState extends State<FormSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
        centerTitle: true,
      ),
    );
  }
}
