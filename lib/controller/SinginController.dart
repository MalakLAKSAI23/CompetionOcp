import 'package:competion/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../class/StatusRequest.dart';
import '../class/genaratData.dart';
import '../function/chnageR.dart';
import '../main.dart';
 

class SigninConroller extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> form = GlobalKey<FormState>();
  StatusRequest? statueR;
  var sin = GenerateData(Get.find());
  late Icon icon = const Icon(Icons.remove_red_eye);
  bool obs = true;
  singin() async {
    statueR = StatusRequest.loading;
    await Future.delayed(const Duration(seconds: 2));
    var response = await sin.singinAuth(email.text, password.text);
    statueR = chnageStatuReq(response);
    if (statueR == StatusRequest.success) {
      if (response["message"] == true) {
        shardp!.setString("id", response["data"]['id_user'].toString());
        shardp!.setString("nom", response["data"]['nom_user']);
        shardp!.setString("email", response["data"]['email_user']);
        shardp!.setString("role", response["data"]['role_user']);
        Get.offAll(
          () => const HomePage(),
        );
      } else {
        Get.rawSnackbar(
            borderRadius: 20,
            backgroundColor: const Color.fromARGB(255, 79, 65, 60),
            margin: const EdgeInsets.all(10),
            title: "Message d erreur",
            message: "Compte non trouve");
      }
    }

    update();
  }

  enchangeObsucr() {
    if (obs == true) {
      obs = false;
      icon = const Icon(Icons.visibility_off);
    } else {
      obs = true;
      icon = const Icon(Icons.remove_red_eye);
    }
    update();
  }

  login() {
    var formdata = form.currentState;
    if (formdata!.validate()) {
      singin();
    } else {
      HapticFeedback.vibrate();
    }
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}