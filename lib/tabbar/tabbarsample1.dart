import 'package:flutter/material.dart';
class TabBarSampleOne extends StatefulWidget {
  const TabBarSampleOne({super.key});

  @override
  State<TabBarSampleOne> createState() => _TabBarSampleOneState();
}

class _TabBarSampleOneState extends State<TabBarSampleOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
    child: Scaffold(

    ));
  }
}
