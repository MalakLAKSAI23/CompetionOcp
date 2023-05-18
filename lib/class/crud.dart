import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;


import 'StatusRequest.dart';




class Crude {

  Future<Either<StatusRequest, Map>> getdata(String url,Map data) async {
    var response = await http.post(Uri.parse(url),body:data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map responsbode = jsonDecode(response.body);
      return Right(responsbode);
    } else {
      return const Left(StatusRequest.serverFailure);
    }
  }


  
}