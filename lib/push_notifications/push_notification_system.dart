import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technicaltestpragma/push_notifications/custom_snack_bar.dart';
import '../utils/app_colors.dart';
import '../utils/app_constants.dart';

class PushNotificationSystem{

  BuildContext context;

  PushNotificationSystem({required this.context});

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future initializeCloudMessaging() async{


    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? remoteMessage)
    {
      if(remoteMessage != null){


      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage? remoteMessage) {
      if(remoteMessage != null){
        showCustomSnackBar(remoteMessage.notification!.body!,title: remoteMessage.notification!.title!,backgroundColor: AppColors.appBlue);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? remoteMessage) {
      if(remoteMessage != null){

      }
    });

  }

  Future generateMessagingToken() async{

    await FirebaseMessaging.instance.requestPermission();

    String? registrationToken = await messaging.getToken();

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString(AppConstants.FIRESTORE_TOKENS, registrationToken!);

    messaging.subscribeToTopic("allCatFans");


  }


}