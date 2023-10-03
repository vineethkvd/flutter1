import 'package:flutter1/apigetx/model/model.dart';
import 'package:flutter1/apigetx/services/servies.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  final Rx<DataModel> dataModel = DataModel(
    userId: 0,
    id: 0,
    title: '',
    completed: false,
  ).obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      final data = await DataServices().getService();
      dataModel.value = data;
    } catch (e) {
      Get.snackbar("No data", "$e");
    }
  }
}
