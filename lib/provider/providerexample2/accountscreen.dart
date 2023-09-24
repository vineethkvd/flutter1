import 'package:flutter/material.dart';
import 'package:flutter1/provider/providerexample2/navbar.dart';
import 'package:provider/provider.dart';

import 'changenotifier2/changenotifier2.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  static const String id = 'account_screen';
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const NavBar(),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: ${dataProvider.data['name'].toString()}',style: const TextStyle(fontSize: 25),),
              Text('Email: ${dataProvider.data['email'].toString()}',style: const TextStyle(fontSize: 25)),
              Text('Age: ${dataProvider.data['age'].toString()}',style: const TextStyle(fontSize: 25)),
            ],
          ),
        ),
      ),
    );
  }
}
