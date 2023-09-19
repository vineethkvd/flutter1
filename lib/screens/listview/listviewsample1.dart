import 'package:flutter/material.dart';

class ListViewSampleEg1 extends StatefulWidget {
  const ListViewSampleEg1({super.key});

  @override
  State<ListViewSampleEg1> createState() => _ListViewSampleEg1State();
}

class _ListViewSampleEg1State extends State<ListViewSampleEg1> {
  List<String> names = ['akash', 'vineeth', 'vishnu'];
  List<String> messages = ['hi', 'gd mng', 'how are you'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("WhatsApp"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
            title: Text(names[index]),
            subtitle: Text(messages[index]),
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}
