import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.setBool('isLoggedIn', true);
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
