import 'package:flutter/material.dart';
class Data extends ChangeNotifier{
  Map data = {
    'name': 'Sammy Shark',
    'email': 'example@example.com',
    'age': 42
  };
  void updateAccount(input) {
    data = input;
    notifyListeners();
  }
}