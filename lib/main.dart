import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'apigetx/view/displayapidata.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: DisplayApiData(),
    );
  }
}
