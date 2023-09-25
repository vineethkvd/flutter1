import 'package:flutter/material.dart';
import 'package:flutter1/provider/providerexample2/navbar.dart';
import 'package:provider/provider.dart';

import 'changenotifier2/changenotifier2.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static const String id = 'settings_screen';
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final Map data = {'name': String, 'email': String, 'age': int};
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Account Details"),
      ),
      bottomNavigationBar: const NavBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  onSaved: (input) => data['name'] = input,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  onSaved: (input) => data['email'] = input,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
                  onSaved: (input) => data['age'] = input,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        formKey.currentState!.save();
                        Provider.of<Data>(context, listen: false)
                            .updateAccount(data);
                        formKey.currentState?.reset();
                      },
                      child: const Text('Submit')),
                )
              ],
            )),
      ),
    );
  }
}
