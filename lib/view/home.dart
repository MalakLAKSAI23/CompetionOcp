import 'package:competion/class/Article.dart';
import 'package:competion/utils/myColor.dart';
import 'package:competion/widget/CardArticle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/login.dart';
import '../controller/homeController.dart';
import '../widget/textFilde.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    homeController controller = Get.put(homeController());
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => SignIn());
                },
                icon: Icon(Icons.login))
          ],
          title: Text(
            "Home",
            style: TextStyle(fontSize: 14),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Rand",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Edittext(
                    validator: (val) {
                      return null;
                    },
                    labele: "",
                    obescure: false,
                    hint: 'search',
                    prifixicon: const Icon(Icons.search),
                    controller: controller.search),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GetBuilder<homeController>(builder: (cont) {
                  return Container(
                    width: 100,
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...List.generate(controller.tage.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: MaterialButton(
                                textColor: Colors.white,
                                color: cont.index == index
                                    ? GlobalColors.myColor
                                    : Colors.grey[100],
                                child: Text(controller.tage[index].toString(),
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: cont.index == index
                                            ? Colors.white
                                            : Colors.black)),
                                onPressed: () {
                                  cont.Change(index);
                                },
                              ),
                            ),
                          );
                        })
                      ],
                    ),
                  );
                }),
              ),
              ...List.generate(5, (index) {
                return CardAtricle(
                  article: new Article(
                      id_article: 1,
                      theme_article: "sport",
                      title_article:
                          "Parcourez des images premium sur iStock | - 20 % avec le code UNSPLASH20",
                      date_article: "2003/2/5"),
                );
              })
            ],
          ),
        ));
  }
}
