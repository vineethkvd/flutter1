import 'package:flutter/material.dart';

class FlutterForms extends StatefulWidget {
  const FlutterForms({super.key});

  @override
  State<FlutterForms> createState() => _FlutterFormsState();
}

class _FlutterFormsState extends State<FlutterForms> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController=TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black45, fontSize: 25),
                ),
                Form(
                  key: ,
                  child: TextFormField(
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(30),
                      prefixIcon: Icon(Icons.person),
                        suffixIcon: Icon(Icons.comment),
                        hintText: "Enter your name",
                        label: Text("Name"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.purple, width: 2),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
