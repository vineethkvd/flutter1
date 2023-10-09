import 'package:flutter/material.dart';
import 'package:flutter1/sharedpreference/example2/homeeg2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginExample2 extends StatefulWidget {
  const LoginExample2({Key? key});

  @override
  State<LoginExample2> createState() => _LoginExample2State();
}

class _LoginExample2State extends State<LoginExample2> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  void checkLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? isLoggedIn = prefs.getBool('value');

    if (isLoggedIn == true) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeExample2(),
      ));
    }
  }

  void saveValue() async {
    var name = nameController.text;
    var password = passwordController.text;

    if (name == password && name.isNotEmpty && password.isNotEmpty) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('value', true);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeExample2(),
      ));
    } else {
      print("Password and email are different");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Name"),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(hintText: "Password"),
              ),
              ElevatedButton(
                onPressed: () {
                  saveValue();
                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
