import 'package:flutter/material.dart';
import 'package:flutter1/sharedpreference/home.dart';
import 'package:flutter1/sharedpreference/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  MyApp({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
      initialRoute: isLoggedIn ? '/home' : '/login',
    );
  }
}
