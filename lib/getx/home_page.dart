import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends StatefulWidget {
  final title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {
       controller.incCounter();
      },child: const Icon(Icons.add)),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'You have pushed the button this many times:',style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Obx(() => Text('${controller.count.value}',style: TextStyle(fontSize: 20),))
        ]),
      ),
    );
  }
}
