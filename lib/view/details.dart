import 'package:competion/utils/myColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details Article",
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 0, 1, 32)),
                      child: AnimatedOpacity(
                        opacity: 0.6,
                        duration: const Duration(seconds: 1),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1585829365295-ab7cd400c167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXJ0aWNsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 900,
                            )),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 90,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: GlobalColors.myColor),
                    child: Center(
                      child: Text(
                        "Sport",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Positioned(
                      left: 20,
                      bottom: 50,
                      child: Text(
                        "unDraw - Open source ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Center(
                    child: Text(
                      "2003/2/2",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Text("Descrition"),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                  "The installer - which requires that you have PHP already installed - will download Composer for you and set up your PATH environment variable so you can simply call composer from any directory.vThe installer - which requires that you have PHP already installed - will download Composer for you and set up your PATH environment variable so you can simply call composer from any directory."),
            ),
            Text("Comentaire"),

            

          ],
        ),
      ),
    );
  }
}
