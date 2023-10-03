import 'package:flutter/material.dart';
import 'package:flutter1/apigetx/controller/datacontroller.dart';
import 'package:get/get.dart';

class DisplayApiData extends StatefulWidget {
  const DisplayApiData({super.key});

  @override
  State<DisplayApiData> createState() => _DisplayApiDataState();
}

class _DisplayApiDataState extends State<DisplayApiData> {
  //1st create the instance of controller
  final controller = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx api"),
      ),
      body: Container(child:
          //2nd create the obx
          Obx(() {
        var data = controller.dataModel.value;
        return Column(
          children: [
            Text("${data.userId ?? ""}"),
            Text("${data.id ?? ""}"),
            Text("${data.title ?? ""}"),
            Text("${data.completed ?? ""}")
          ],
        );
      })),
    );
  }
}
