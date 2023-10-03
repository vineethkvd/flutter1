import 'package:get/get.dart';

class MyGHomecontroller extends GetxController {
  final count = 0.obs;
  incCounter() {
    count.value++;
  }
}
