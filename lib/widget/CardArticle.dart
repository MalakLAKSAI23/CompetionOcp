import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../class/Article.dart';
import '../view/details.dart';

class CardAtricle extends StatelessWidget {
  final Article article;
  const CardAtricle({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Get.to(() => Details());
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Expanded(
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  width: 110,
                  height: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1585829365295-ab7cd400c167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXJ0aWNsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          article.theme_article.toString(),
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text(
                          article.title_article.toString(),
                          style: TextStyle(
                              color: Color.fromARGB(255, 38, 38, 38),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          article.date_article.toString(),
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
