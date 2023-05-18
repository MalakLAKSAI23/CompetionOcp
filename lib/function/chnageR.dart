import 'package:http/http.dart';

import '../class/StatusRequest.dart';
 


chnageStatuReq(response) {
  if (response is StatusRequest) {
    return response;
  }
   else {
    return StatusRequest.success;
  }
}