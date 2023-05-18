import 'package:competion/class/crud.dart';
import 'package:get/get.dart';
 

class InitalBiding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crude());
  }
}