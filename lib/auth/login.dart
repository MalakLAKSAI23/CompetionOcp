import 'package:competion/utils/myColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../class/StatusRequest.dart';
import '../controller/SinginController.dart';
import '../widget/textFilde.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  // Future<void> scanBarcode() async {
  //   String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
  //       '#ff6666', 'Cancel', true, ScanMode.BARCODE);

  //   if (barcodeScanRes != '-1') {
  //     print('Barcode scanned: $barcodeScanRes');
  //     // Do something with the barcode result
  //   } else {
  //     print('User cancelled the scan');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    SigninConroller singinController = Get.put(SigninConroller());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: const Color.fromARGB(255, 255, 239, 230),
        scrolledUnderElevation: 0,
        title: const Text(
          "Connexion",
          style: TextStyle(fontFamily: "cairo", fontSize: 19),
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GetBuilder<SigninConroller>(builder: (contex) {
          if (contex.statueR == StatusRequest.loading) {
            return Center(
                child: ColorFiltered(
                    colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                    child: Text("loading")));
          } else {
            return Form(
              key: contex.form,
              child: ListView(children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 200,
                  child: Image.network(
                    "https://img.freepik.com/premium-vector/online-registration-sign-up-with-man-sitting-near-smartphone_268404-95.jpg?w=360",
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[100]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text("email"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Edittext(
                              prifixicon: const Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 80, 80, 80),
                              ),
                              hint: "Example@gmail.com",
                              obescure: false,
                              labele: "",
                              controller: singinController.email,
                              validator: (val) {
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text("password"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Edittext(
                              prifixicon: const Icon(
                                Icons.password,
                                color: Color.fromARGB(255, 80, 80, 80),
                              ),
                              hint: "********",
                              obescure: contex.obs,
                              labele: "",
                              controller: singinController.password,
                              icon: IconButton(
                                onPressed: () {
                                  contex.enchangeObsucr();
                                },
                                icon: contex.icon,
                              ),
                              validator: (val) {
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: MaterialButton(
                        color: GlobalColors.myColor,
                        onPressed: () {
                          singinController.login();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sign in",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                            Icon(
                              Icons.last_page_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            );
          }
        }),
      ),
    );
  }
}
