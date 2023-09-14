import 'package:flutter/material.dart';
class RadioBtn extends StatefulWidget {
  const RadioBtn({super.key});

  @override
  State<RadioBtn> createState() => _RadioBtnState();
}

class _RadioBtnState extends State<RadioBtn> {
  var data;
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        RadioListTile(title: Text("Male"),subtitle: Text("More details"),value: 'male', groupValue: data, onChanged: (value) {
          setState(() {
            data=value;
          });
        },),
        RadioListTile(title: Text("Female"),subtitle: Text("More details"),value: 'female', groupValue: data, onChanged: (value) {
          setState(() {
            data=value;
          });
        },),
        ElevatedButton(onPressed: (){
          setState(() {
            result=data;
          });
        }, child: Text("Show Text")),
        Text("Result : $result")
      ]),

    );
  }
}
