import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeController extends GetxController {
  late TextEditingController search;
  int index=0;
  List tage = [
    "All",
    "Culture",
    "Sport",
    "Politique",
    "Art",
    "Education",
  ];
  Change(int i ){
    index = i;
    update();
    
  }
  @override
  void onInit() {
    search = new TextEditingController();
    super.onInit();
  }
}
