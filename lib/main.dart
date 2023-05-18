import 'package:competion/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth/login.dart';
import 'class/binging.dart';
import 'constant/routes.dart';

SharedPreferences? shardp;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  shardp = await SharedPreferences.getInstance();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.grey,
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      getPages: routes,
      initialBinding: InitalBiding(),
    );
  }
}
