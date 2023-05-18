import 'package:competion/constant/routeNamed.dart';
import 'package:get/get.dart';

import '../view/home.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
     page: () => HomePage(),)];
