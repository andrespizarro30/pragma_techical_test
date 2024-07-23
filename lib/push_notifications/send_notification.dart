import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:technicaltestpragma/utils/app_constants.dart';

class SendNotification{

  SharedPreferences sharedPreferences;

  SendNotification({required this.sharedPreferences});

  Future<bool> sendLikeNotification(String catBreed) async{

    var accessToken = sharedPreferences.get("fcmAccessToken");

    final headers = {
      'Host': 'fcm.googleapis.com',
      'content-type': 'application/json',
      'Authorization': 'Bearer ${accessToken}'
    };

    Map<String,dynamic> body = {
      "message":{
        "notification":{
          "title": AppConstants.NOTIFICATION_TITLE,
          "body": "${AppConstants.NOTIFICATION_BODY} ${catBreed}"
        },
        "topic": "allCatFans"
      }
    };

    var bodyEncoded = json.encode(body);

    String url="https://fcm.googleapis.com/v1/projects/kapitaltaskmanager/messages:send";


    final response = await http.post(Uri.parse(url),headers: headers,body: bodyEncoded,encoding: Encoding.getByName('utf-8'));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }

  }


}