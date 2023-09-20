import 'package:flutter/material.dart';

class ListViewSampleEg1 extends StatefulWidget {
  const ListViewSampleEg1({super.key});

  @override
  State<ListViewSampleEg1> createState() => _ListViewSampleEg1State();
}

class _ListViewSampleEg1State extends State<ListViewSampleEg1> {
  List<String> name = ['vishnu', 'akash', 'vineeth'];
  List<String> message = [
    'hi hello how are you',
    'ok bye bye',
    'gd nt see you soon'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
            ),
            title: Text(name[index]),
            subtitle: Text(message[index]),
            trailing: Text("10:${index}0PM"),
            onLongPress: () {},
          );
        },
      ),
    );
  }
}
