import 'package:competion/constant/url.dart';
 

import 'crud.dart';

class GenerateData {
  Crude c;
  GenerateData(this.c);
  singinAuth(String email, String password) async {
    var reponse = await c.getdata(
        auth, {"email": email.toString(), "password": password.toString()});
    return reponse.fold((left) => left, (right) => right);
  }
}
